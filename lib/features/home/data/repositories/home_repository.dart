import 'dart:async';
import '../../../../core/database/daos/activity_dao.dart';
import '../../../../core/database/daos/attraction_dao.dart';
import '../../../activity/domain/entities/activity.dart';
import '../../../attraction/domain/entities/attraction.dart';
import '../../domain/entities/home_state.dart';
import '../../domain/services/open_time_parser.dart';

class HomeRepository {
  HomeRepository({
    required AttractionDao attractionDao,
    required ActivityDao activityDao,
    OpenTimeParser? openTimeParser,
  }) : _attractionDao = attractionDao,
       _activityDao = activityDao,
       _openTimeParser = openTimeParser ?? const OpenTimeParser();

  final AttractionDao _attractionDao;
  final ActivityDao _activityDao;
  final OpenTimeParser _openTimeParser;

  Stream<HomeUiState> watchHomeState({
    required HomePeriod period,
    required bool isRainyMode,
  }) {
    return _combineLatest(_attractionDao.watchAll(), _activityDao.watchAll(), (
      attractions,
      activities,
    ) {
      return _buildHomeState(
        attractions: attractions,
        activities: activities,
        period: period,
        isRainyMode: isRainyMode,
      );
    });
  }

  HomeUiState _buildHomeState({
    required List<Attraction> attractions,
    required List<Activity> activities,
    required HomePeriod period,
    required bool isRainyMode,
  }) {
    final now = DateTime.now();
    final attractionCards =
        attractions
            .where((item) => item.name.trim().isNotEmpty)
            .map((item) => _toAttractionCard(item, period, isRainyMode, now))
            .toList()
          ..sort((a, b) => b.score.compareTo(a.score));
    final activityCards =
        activities
            .map((item) => _toActivityCard(item, now))
            .whereType<_ScoredCard>()
            .toList()
          ..sort((a, b) => b.score.compareTo(a.score));
    final heroCard = attractionCards.isNotEmpty
        ? attractionCards.first.card
        : null;
    final nearbyCards = attractionCards
        .skip(heroCard == null ? 0 : 1)
        .take(5)
        .map((e) => e.card)
        .toList();
    final availableCards = attractionCards
        .where((e) {
          return e.card.status == RecommendStatus.openNow ||
              e.card.status == RecommendStatus.openUntil ||
              e.card.status == RecommendStatus.alwaysOpen ||
              e.card.status == RecommendStatus.uncertain;
        })
        .take(5)
        .map((e) => e.card)
        .toList();
    return HomeUiState(
      selectedPeriod: period,
      isRainyMode: isRainyMode,
      title: HomePeriodHelper.title(period),
      subtitle: HomePeriodHelper.subtitle(period),
      heroCard: heroCard,
      nearbyCards: nearbyCards,
      activityCards: activityCards.take(3).map((e) => e.card).toList(),
      availableCards: availableCards,
      isLoading: false,
      errorMessage: null,
    );
  }

  _ScoredCard _toAttractionCard(
    Attraction item,
    HomePeriod period,
    bool isRainyMode,
    DateTime now,
  ) {
    final categoryNames = item.categories.map((e) => e.name).toList();
    final openResult = _openTimeParser.parse(item.openTime, now);
    var score = 0;
    // Already exists in the database, considered a candidate for display.
    score += 30;
    if (item.images.isNotEmpty) score += 10;
    if (item.nlat != null && item.elong != null) score += 10;
    if (_matchesPeriod(categoryNames, period)) score += 25;
    if (openResult.status == RecommendStatus.openUntil ||
        openResult.status == RecommendStatus.openNow) {
      score += 30;
    } else if (openResult.status == RecommendStatus.alwaysOpen) {
      score += 20;
    } else if (openResult.status == RecommendStatus.uncertain) {
      score += 5;
    }
    if (isRainyMode) {
      if (_isIndoor(categoryNames)) score += 30;
      if (_isOutdoor(categoryNames)) score -= 30;
    }
    return _ScoredCard(
      score: score,
      card: HomeRecommendCard(
        id: item.id.toString(),
        title: item.name,
        subtitle: _buildSubtitle(item),
        imageUrl: item.images.isNotEmpty ? item.images.first.src : null,
        badgeText: openResult.badgeText,
        distanceText: null,
        reasonText: _buildAttractionReason(item, openResult),
        status: openResult.status,
        lat: item.nlat,
        lng: item.elong,
        type: HomeRecommendType.attraction,
        emoji: _fallbackEmoji(categoryNames),
      ),
    );
  }

  _ScoredCard? _toActivityCard(Activity item, DateTime now) {
    final begin = _parseApiDate(item.begin);
    final end = _parseApiDate(item.end);
    if (begin == null || end == null) return null;
    final isOngoing = now.isAfter(begin) && now.isBefore(end);
    final isComingSoon = begin.isAfter(now);
    final daysToEnd = end.difference(now).inDays;
    var score = 0;
    if (isOngoing) score += 50;
    if (isComingSoon) score += 20;
    if (daysToEnd >= 0 && daysToEnd <= 7) score += 20;
    if (item.address.trim().isNotEmpty) score += 10;
    if (item.ticket.contains('免費') || item.ticket.trim().isEmpty) score += 10;
    if (score <= 0) return null;
    final status = isOngoing
        ? RecommendStatus.ongoing
        : RecommendStatus.comingSoon;
    return _ScoredCard(
      score: score,
      card: HomeRecommendCard(
        id: item.id.toString(),
        title: item.title,
        subtitle: item.distric.isNotEmpty ? item.distric : item.address,
        imageUrl: null,
        badgeText: isOngoing ? '進行中' : '即將登場',
        distanceText: null,
        reasonText: item.ticket.contains('免費') || item.ticket.trim().isEmpty
            ? '免費'
            : item.ticket,
        status: status,
        lat: double.tryParse(item.nlat),
        lng: double.tryParse(item.elong),
        type: HomeRecommendType.activity,
        emoji: _buildDateEmoji(begin),
      ),
    );
  }

  String _buildSubtitle(Attraction item) {
    final district = item.distric.trim();
    final categories = item.categories.map((e) => e.name).take(2).join('・');
    if (district.isNotEmpty && categories.isNotEmpty) {
      return '$district・$categories';
    }
    if (district.isNotEmpty) return district;
    if (categories.isNotEmpty) return categories;
    return '台北景點';
  }

  String _buildAttractionReason(Attraction item, OpenTimeResult openResult) {
    final reasons = <String>[];
    if (item.ticket.contains('免費')) {
      reasons.add('免費參觀');
    }
    if (openResult.reasonText != null) {
      reasons.add(openResult.reasonText!);
    }
    if (item.openTime.trim().isNotEmpty &&
        openResult.status != RecommendStatus.uncertain) {
      reasons.add(item.openTime.trim().replaceAll('\r\n', '・'));
    }
    if (reasons.isEmpty) {
      reasons.add('資料顯示可前往，建議出發前再次確認');
    }
    return reasons.take(2).join('・');
  }

  bool _matchesPeriod(List<String> categories, HomePeriod period) {
    switch (period) {
      case HomePeriod.morning:
        return _containsAny(categories, ['戶外踏青', '親子共遊', '公園', '步道', '宗教信仰']);
      case HomePeriod.afternoon:
        return _containsAny(categories, ['藝文館所', '歷史建築', '博物館', '親子共遊']);
      case HomePeriod.evening:
        return _containsAny(categories, ['河岸', '公園', '商街', '夜市', '觀景', '戶外踏青']);
      case HomePeriod.night:
        return _containsAny(categories, ['觀光夜市', '主題商街', '夜景', '觀景']);
    }
  }

  bool _isIndoor(List<String> categories) {
    return _containsAny(categories, ['藝文館所', '歷史建築', '博物館', '主題商街']);
  }

  bool _isOutdoor(List<String> categories) {
    return _containsAny(categories, ['戶外踏青', '單車遊蹤', '藍色水路', '河岸']);
  }

  bool _containsAny(List<String> source, List<String> keywords) {
    return source.any((name) {
      return keywords.any((keyword) => name.contains(keyword));
    });
  }

  String _fallbackEmoji(List<String> categories) {
    if (_containsAny(categories, ['觀光夜市'])) return '🏮';
    if (_containsAny(categories, ['主題商街'])) return '🛍️';
    if (_containsAny(categories, ['藝文館所', '博物館'])) return '🏛️';
    if (_containsAny(categories, ['歷史建築'])) return '🏯';
    if (_containsAny(categories, ['宗教信仰'])) return '⛩️';
    if (_containsAny(categories, ['戶外踏青', '公園'])) return '🌳';
    return '📍';
  }

  String _buildDateEmoji(DateTime date) {
    final month = date.month.toString().padLeft(2, '0');
    final day = date.day.toString().padLeft(2, '0');
    return '$month/$day';
  }

  DateTime? _parseApiDate(String value) {
    final cleaned = value.replaceAll(' +08:00', '').replaceAll('/', '-').trim();
    return DateTime.tryParse(cleaned);
  }

  Stream<R> _combineLatest<A, B, R>(
    Stream<A> streamA,
    Stream<B> streamB,
    R Function(A a, B b) combiner,
  ) {
    late A latestA;
    late B latestB;
    var hasA = false;
    var hasB = false;
    final controller = StreamController<R>();
    late final StreamSubscription subA;
    late final StreamSubscription subB;
    void emitIfReady() {
      if (hasA && hasB) {
        controller.add(combiner(latestA, latestB));
      }
    }

    subA = streamA.listen((value) {
      latestA = value;
      hasA = true;
      emitIfReady();
    }, onError: controller.addError);
    subB = streamB.listen((value) {
      latestB = value;
      hasB = true;
      emitIfReady();
    }, onError: controller.addError);
    controller.onCancel = () async {
      await subA.cancel();
      await subB.cancel();
    };
    return controller.stream;
  }
}

class _ScoredCard {
  final int score;
  final HomeRecommendCard card;

  const _ScoredCard({required this.score, required this.card});
}
