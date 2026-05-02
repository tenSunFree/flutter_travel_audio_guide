import 'dart:async';
import 'dart:math' as math;
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../core/database/database_provider.dart';
import '../../../../core/sync/app_sync_service.dart';
import '../../../../core/sync/sync_providers.dart';
import '../../domain/entities/attraction.dart';
import '../enums/attraction_sort_filter_enums.dart';

/// State
class AttractionListState {
  const AttractionListState({
    this.allItems = const [],
    this.items = const [],
    this.page = 1,
    this.total = 0,
    this.isLoading = false,
    this.isLoadingMore = false,
    this.hasMore = true,
    this.errorMessage,
    this.sortOrder = AttractionSortOrder.apiOrder,
    this.selectedCategoryIds = const {},
    this.distric = '',
    this.selectedTargets = const {},
    this.selectedFacilities = const {},
    this.userLat,
    this.userLng,
    this.isSyncing,
  });

  final List<Attraction> allItems;
  final List<Attraction> items;
  final int page;
  final int total;
  final bool isLoading;
  final bool isLoadingMore;
  final bool hasMore;
  final String? errorMessage;
  final AttractionSortOrder sortOrder;
  final Set<int> selectedCategoryIds;
  final String distric;
  final Set<AttractionTargetFilter> selectedTargets;
  final Set<AttractionFacilityFilter> selectedFacilities;
  final double? userLat;
  final double? userLng;
  final bool? isSyncing; // Is background synchronization in progress

  bool get isDefaultFilter =>
      sortOrder == AttractionSortOrder.apiOrder &&
      selectedCategoryIds.isEmpty &&
      distric.isEmpty &&
      selectedTargets.isEmpty &&
      selectedFacilities.isEmpty;

  List<String> get availableDistrics {
    final result =
        allItems
            .map((e) => e.distric.trim())
            .where((e) => e.isNotEmpty)
            .toSet()
            .toList()
          ..sort();
    return result;
  }

  List<AttractionCategory> get availableCategories {
    final seen = <int>{};
    final result = <AttractionCategory>[];
    for (final item in allItems) {
      for (final cat in item.categories) {
        if (cat.id != 0 && cat.name.isNotEmpty && seen.add(cat.id)) {
          result.add(cat);
        }
      }
    }
    return result;
  }

  static List<Attraction> computeDisplayItems(
    List<Attraction> source, {
    required AttractionSortOrder sortOrder,
    required Set<int> selectedCategoryIds,
    required String distric,
    required Set<AttractionTargetFilter> selectedTargets,
    required Set<AttractionFacilityFilter> selectedFacilities,
    double? userLat,
    double? userLng,
  }) {
    final filtered = source.where((item) {
      if (selectedCategoryIds.isNotEmpty) {
        final itemCatIds = item.categories.map((c) => c.id).toSet();
        if (!selectedCategoryIds.any(itemCatIds.contains)) return false;
      }
      if (distric.isNotEmpty && item.distric.trim() != distric) return false;
      if (selectedTargets.isNotEmpty) {
        final itemTargetIds = item.targets.map((t) => t.id).toSet();
        final matched = selectedTargets.any(
          (filter) => itemTargetIds.contains(filter.apiId),
        );
        if (!matched) return false;
      }
      if (selectedFacilities.isNotEmpty) {
        final itemFriendlyIds = item.friendlies.map((f) => f.id).toSet();
        final matched = selectedFacilities.any(
          (filter) => itemFriendlyIds.contains(filter.apiId),
        );
        if (!matched) return false;
      }
      return true;
    }).toList();
    switch (sortOrder) {
      case AttractionSortOrder.apiOrder:
        break;
      case AttractionSortOrder.nameAZ:
        filtered.sort((a, b) => a.name.compareTo(b.name));
      case AttractionSortOrder.modifiedNewest:
        filtered.sort((a, b) => b.modified.compareTo(a.modified));
      case AttractionSortOrder.distanceAsc:
        if (userLat != null && userLng != null) {
          filtered.sort((a, b) {
            final ad = _distance(userLat, userLng, a.nlat, a.elong);
            final bd = _distance(userLat, userLng, b.nlat, b.elong);
            return ad.compareTo(bd);
          });
        }
    }
    return filtered;
  }

  static double _distance(
    double userLat,
    double userLng,
    double? lat,
    double? lng,
  ) {
    if (lat == null || lng == null) return double.maxFinite;
    final dlat = userLat - lat;
    final dlng = userLng - lng;
    return math.sqrt(dlat * dlat + dlng * dlng);
  }

  AttractionListState copyWith({
    List<Attraction>? allItems,
    List<Attraction>? items,
    int? page,
    int? total,
    bool? isLoading,
    bool? isLoadingMore,
    bool? hasMore,
    String? errorMessage,
    bool clearErrorMessage = false,
    AttractionSortOrder? sortOrder,
    Set<int>? selectedCategoryIds,
    String? distric,
    Set<AttractionTargetFilter>? selectedTargets,
    Set<AttractionFacilityFilter>? selectedFacilities,
    double? userLat,
    double? userLng,
    bool? isSyncing,
  }) {
    return AttractionListState(
      allItems: allItems ?? this.allItems,
      items: items ?? this.items,
      page: page ?? this.page,
      total: total ?? this.total,
      isLoading: isLoading ?? this.isLoading,
      isLoadingMore: isLoadingMore ?? this.isLoadingMore,
      hasMore: hasMore ?? this.hasMore,
      errorMessage: clearErrorMessage
          ? null
          : (errorMessage ?? this.errorMessage),
      sortOrder: sortOrder ?? this.sortOrder,
      selectedCategoryIds: selectedCategoryIds ?? this.selectedCategoryIds,
      distric: distric ?? this.distric,
      selectedTargets: selectedTargets ?? this.selectedTargets,
      selectedFacilities: selectedFacilities ?? this.selectedFacilities,
      userLat: userLat ?? this.userLat,
      userLng: userLng ?? this.userLng,
      isSyncing: isSyncing ?? this.isSyncing,
    );
  }
}

/// Controller
class AttractionListController extends StateNotifier<AttractionListState> {
  AttractionListController({required this.ref})
    : super(const AttractionListState()) {
    _init();
  }

  final Ref ref;
  StreamSubscription<List<Attraction>>? _sub;

  void _init() {
    // Listening to the database → Displaying data immediately upon availability
    _sub = ref
        .read(appDatabaseProvider)
        .attractionDao
        .watchAll()
        .listen(_onData);
    // Background synchronization, does not obstruct UI
    Future.microtask(() async {
      try {
        await ref.read(appSyncServiceProvider).syncAllIfNeeded();
      } catch (_) {
      } finally {
        // After syncing is complete (regardless of success or failure), close the skeleton screen.
        if (mounted) {
          state = state.copyWith(isSyncing: false);
        }
      }
    });
  }

  void _onData(List<Attraction> all) {
    final filtered = AttractionListState.computeDisplayItems(
      all,
      sortOrder: state.sortOrder,
      selectedCategoryIds: state.selectedCategoryIds,
      distric: state.distric,
      selectedTargets: state.selectedTargets,
      selectedFacilities: state.selectedFacilities,
      userLat: state.userLat,
      userLng: state.userLng,
    );
    state = state.copyWith(
      allItems: all,
      items: filtered,
      total: all.length,
      isLoading: false,
      clearErrorMessage: true,
    );
  }

  // Pull-to-refresh: Force update from API
  Future<void> refresh() async {
    state = state.copyWith(isLoading: true);
    try {
      await ref.read(appSyncServiceProvider).forceSync(SyncTarget.attractions);
    } catch (e) {
      state = state.copyWith(errorMessage: e.toString());
    } finally {
      state = state.copyWith(isLoading: false);
    }
  }

  // Page calls loadInitial / loadMore → backward compatibility
  Future<void> loadInitial() => refresh();

  Future<void> loadMore() async {}

  void applySortFilter({
    AttractionSortOrder? sortOrder,
    Set<int>? categoryIds,
    String? distric,
    Set<AttractionTargetFilter>? targets,
    Set<AttractionFacilityFilter>? facilities,
  }) {
    final s = sortOrder ?? state.sortOrder;
    final c = categoryIds ?? state.selectedCategoryIds;
    final d = distric ?? state.distric;
    final t = targets ?? state.selectedTargets;
    final f = facilities ?? state.selectedFacilities;
    state = state.copyWith(
      sortOrder: s,
      selectedCategoryIds: c,
      distric: d,
      selectedTargets: t,
      selectedFacilities: f,
      items: AttractionListState.computeDisplayItems(
        state.allItems,
        sortOrder: s,
        selectedCategoryIds: c,
        distric: d,
        selectedTargets: t,
        selectedFacilities: f,
        userLat: state.userLat,
        userLng: state.userLng,
      ),
    );
  }

  void resetSortFilter() => applySortFilter(
    sortOrder: AttractionSortOrder.apiOrder,
    categoryIds: {},
    distric: '',
    targets: {},
    facilities: {},
  );

  @override
  void dispose() {
    _sub?.cancel();
    super.dispose();
  }
}

/// Provider
final attractionListControllerProvider =
    StateNotifierProvider<AttractionListController, AttractionListState>((ref) {
      return AttractionListController(ref: ref);
    });
