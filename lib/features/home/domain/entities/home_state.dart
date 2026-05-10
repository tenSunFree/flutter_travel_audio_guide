import '../../../activity/domain/entities/activity.dart';
import '../../../attraction/domain/entities/attraction.dart';

enum HomePeriod { morning, afternoon, evening, night }

enum RecommendStatus {
  openNow,
  openUntil,
  alwaysOpen,
  ongoing,
  comingSoon,
  closingSoon,
  uncertain,
}

enum HomeRecommendType { attraction, activity, audioGuide }

class HomeUiState {
  final HomePeriod selectedPeriod;
  final bool isRainyMode;
  final String title;
  final String subtitle;
  final HomeRecommendCard? heroCard;
  final List<HomeRecommendCard> nearbyCards;
  final List<HomeRecommendCard> activityCards;
  final List<HomeRecommendCard> availableCards;
  final bool isLoading;
  final String? errorMessage;

  const HomeUiState({
    required this.selectedPeriod,
    required this.isRainyMode,
    required this.title,
    required this.subtitle,
    required this.heroCard,
    required this.nearbyCards,
    required this.activityCards,
    required this.availableCards,
    required this.isLoading,
    required this.errorMessage,
  });

  factory HomeUiState.initial() {
    final period = HomePeriodHelper.fromNow(DateTime.now());
    return HomeUiState(
      selectedPeriod: period,
      isRainyMode: false,
      title: HomePeriodHelper.title(period),
      subtitle: HomePeriodHelper.subtitle(period),
      heroCard: null,
      nearbyCards: const [],
      activityCards: const [],
      availableCards: const [],
      isLoading: true,
      errorMessage: null,
    );
  }

  HomeUiState copyWith({
    HomePeriod? selectedPeriod,
    bool? isRainyMode,
    String? title,
    String? subtitle,
    HomeRecommendCard? heroCard,
    List<HomeRecommendCard>? nearbyCards,
    List<HomeRecommendCard>? activityCards,
    List<HomeRecommendCard>? availableCards,
    bool? isLoading,
    String? errorMessage,
  }) {
    return HomeUiState(
      selectedPeriod: selectedPeriod ?? this.selectedPeriod,
      isRainyMode: isRainyMode ?? this.isRainyMode,
      title: title ?? this.title,
      subtitle: subtitle ?? this.subtitle,
      heroCard: heroCard ?? this.heroCard,
      nearbyCards: nearbyCards ?? this.nearbyCards,
      activityCards: activityCards ?? this.activityCards,
      availableCards: availableCards ?? this.availableCards,
      isLoading: isLoading ?? this.isLoading,
      errorMessage: errorMessage,
    );
  }
}

class HomeRecommendCard {
  final String id;
  final String title;
  final String subtitle;
  final String? imageUrl;
  final String badgeText;
  final String? distanceText;
  final String? reasonText;
  final RecommendStatus status;
  final double? lat;
  final double? lng;
  final HomeRecommendType type;
  final String emoji;

  // Original data, used for direct redirection from the homepage to the details page
  // No need to query the database again, clicks will automatically take you there
  final Attraction? attraction;
  final Activity? activity;

  const HomeRecommendCard({
    required this.id,
    required this.title,
    required this.subtitle,
    required this.imageUrl,
    required this.badgeText,
    required this.distanceText,
    required this.reasonText,
    required this.status,
    required this.lat,
    required this.lng,
    required this.type,
    required this.emoji,
    this.attraction,
    this.activity,
  });
}

extension HomePeriodHelper on HomePeriod {
  static HomePeriod fromNow(DateTime now) {
    final hour = now.hour;
    if (hour >= 5 && hour < 12) return HomePeriod.morning;
    if (hour >= 12 && hour < 17) return HomePeriod.afternoon;
    if (hour >= 17 && hour < 20) return HomePeriod.evening;
    return HomePeriod.night;
  }

  static String label(HomePeriod period) {
    return switch (period) {
      HomePeriod.morning => '早上',
      HomePeriod.afternoon => '下午',
      HomePeriod.evening => '傍晚',
      HomePeriod.night => '夜間',
    };
  }

  static String title(HomePeriod period) {
    return switch (period) {
      HomePeriod.morning => '早安，今天想去哪走走？',
      HomePeriod.afternoon => '午後適合看展或散步',
      HomePeriod.evening => '傍晚，台北開始亮起來',
      HomePeriod.night => '夜晚，台北最美的時刻',
    };
  }

  static String subtitle(HomePeriod period) {
    return switch (period) {
      HomePeriod.morning => '適合晨間散步、步道與戶外景點',
      HomePeriod.afternoon => '為你整理現在適合安排的景點',
      HomePeriod.evening => '適合河岸、夕陽、夜市與晚間活動',
      HomePeriod.night => '夜市人聲鼎沸・夜景景點也正適合出發',
    };
  }
}
