import 'dart:math' as math;
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../domain/entities/attraction.dart';
import '../../domain/usecases/get_attractions_usecase.dart';
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

  // Derived
  bool get isDefaultFilter =>
      sortOrder == AttractionSortOrder.apiOrder &&
      selectedCategoryIds.isEmpty &&
      distric.isEmpty &&
      selectedTargets.isEmpty &&
      selectedFacilities.isEmpty;

  /// Administrative Region: Dynamically collects and removes duplicates from allItems.distric
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

  /// Categories: Dynamically collect and remove duplicates from allItems.categories (preserving the order of first appearance).
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

  // Filtering + Sorting (Exact ID Comparison)
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
      // Category filtering (Any: at least one category is applicable)
      if (selectedCategoryIds.isNotEmpty) {
        final itemCatIds = item.categories.map((c) => c.id).toSet();
        if (!selectedCategoryIds.any(itemCatIds.contains)) return false;
      }
      // Filter by administrative region (exact match)
      if (distric.isNotEmpty && item.distric.trim() != distric) return false;
      // Suitable for filtering by ethnic group (Any: at least one apiId of the selected ethnic group appears in target[])
      if (selectedTargets.isNotEmpty) {
        final itemTargetIds = item.targets.map((t) => t.id).toSet();
        final matched = selectedTargets.any(
          (filter) => itemTargetIds.contains(filter.apiId),
        );
        if (!matched) return false;
      }
      // Friendly facility filter (Any: at least one selected facility's apiId appears in friendly[])
      if (selectedFacilities.isNotEmpty) {
        final itemFriendlyIds = item.friendlies.map((f) => f.id).toSet();
        final matched = selectedFacilities.any(
          (filter) => itemFriendlyIds.contains(filter.apiId),
        );
        if (!matched) return false;
      }
      return true;
    }).toList();
    // Sort
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
    const r = 6371.0;
    final dLat = _rad(lat - userLat);
    final dLng = _rad(lng - userLng);
    final a =
        math.sin(dLat / 2) * math.sin(dLat / 2) +
        math.cos(_rad(userLat)) *
            math.cos(_rad(lat)) *
            math.sin(dLng / 2) *
            math.sin(dLng / 2);
    return r * 2 * math.atan2(math.sqrt(a), math.sqrt(1 - a));
  }

  static double _rad(double d) => d * math.pi / 180;

  AttractionListState copyWith({
    List<Attraction>? allItems,
    List<Attraction>? items,
    int? page,
    int? total,
    bool? isLoading,
    bool? isLoadingMore,
    bool? hasMore,
    String? errorMessage,
    bool clearError = false,
    AttractionSortOrder? sortOrder,
    Set<int>? selectedCategoryIds,
    String? distric,
    Set<AttractionTargetFilter>? selectedTargets,
    Set<AttractionFacilityFilter>? selectedFacilities,
    double? userLat,
    double? userLng,
  }) {
    return AttractionListState(
      allItems: allItems ?? this.allItems,
      items: items ?? this.items,
      page: page ?? this.page,
      total: total ?? this.total,
      isLoading: isLoading ?? this.isLoading,
      isLoadingMore: isLoadingMore ?? this.isLoadingMore,
      hasMore: hasMore ?? this.hasMore,
      errorMessage: clearError ? null : errorMessage ?? this.errorMessage,
      sortOrder: sortOrder ?? this.sortOrder,
      selectedCategoryIds: selectedCategoryIds ?? this.selectedCategoryIds,
      distric: distric ?? this.distric,
      selectedTargets: selectedTargets ?? this.selectedTargets,
      selectedFacilities: selectedFacilities ?? this.selectedFacilities,
      userLat: userLat ?? this.userLat,
      userLng: userLng ?? this.userLng,
    );
  }
}

// Controller
class AttractionListController extends StateNotifier<AttractionListState> {
  AttractionListController({
    required GetAttractionsUseCase getAttractionsUseCase,
  }) : _useCase = getAttractionsUseCase,
       super(const AttractionListState()) {
    loadInitial();
  }

  final GetAttractionsUseCase _useCase;

  Future<void> loadInitial() async {
    if (state.isLoading) return;
    state = state.copyWith(
      isLoading: true,
      page: 1,
      allItems: const [],
      items: const [],
      hasMore: true,
      clearError: true,
    );
    try {
      final result = await _useCase(page: 1);
      final displayed = AttractionListState.computeDisplayItems(
        result.data,
        sortOrder: state.sortOrder,
        selectedCategoryIds: state.selectedCategoryIds,
        distric: state.distric,
        selectedTargets: state.selectedTargets,
        selectedFacilities: state.selectedFacilities,
        userLat: state.userLat,
        userLng: state.userLng,
      );
      state = state.copyWith(
        allItems: result.data,
        items: displayed,
        total: result.total,
        page: 1,
        hasMore: result.data.length < result.total,
        isLoading: false,
        clearError: true,
      );
    } catch (e) {
      state = state.copyWith(isLoading: false, errorMessage: e.toString());
    }
  }

  Future<void> loadMore() async {
    if (state.isLoading || state.isLoadingMore || !state.hasMore) return;
    state = state.copyWith(isLoadingMore: true, clearError: true);
    try {
      final nextPage = state.page + 1;
      final result = await _useCase(page: nextPage);
      final merged = [...state.allItems, ...result.data];
      final displayed = AttractionListState.computeDisplayItems(
        merged,
        sortOrder: state.sortOrder,
        selectedCategoryIds: state.selectedCategoryIds,
        distric: state.distric,
        selectedTargets: state.selectedTargets,
        selectedFacilities: state.selectedFacilities,
        userLat: state.userLat,
        userLng: state.userLng,
      );
      state = state.copyWith(
        allItems: merged,
        items: displayed,
        total: result.total,
        page: nextPage,
        hasMore: merged.length < result.total,
        isLoadingMore: false,
        clearError: true,
      );
    } catch (e) {
      state = state.copyWith(isLoadingMore: false, errorMessage: e.toString());
    }
  }

  void applySortFilter({
    required AttractionSortOrder sortOrder,
    required Set<int> categoryIds,
    required String distric,
    required Set<AttractionTargetFilter> targets,
    required Set<AttractionFacilityFilter> facilities,
  }) {
    final displayed = AttractionListState.computeDisplayItems(
      state.allItems,
      sortOrder: sortOrder,
      selectedCategoryIds: categoryIds,
      distric: distric,
      selectedTargets: targets,
      selectedFacilities: facilities,
      userLat: state.userLat,
      userLng: state.userLng,
    );
    state = state.copyWith(
      sortOrder: sortOrder,
      selectedCategoryIds: categoryIds,
      distric: distric,
      selectedTargets: targets,
      selectedFacilities: facilities,
      items: displayed,
    );
  }

  void resetSortFilter() {
    applySortFilter(
      sortOrder: AttractionSortOrder.apiOrder,
      categoryIds: const {},
      distric: '',
      targets: const {},
      facilities: const {},
    );
  }

  void setUserLocation(double lat, double lng) {
    if (state.sortOrder == AttractionSortOrder.distanceAsc) {
      final displayed = AttractionListState.computeDisplayItems(
        state.allItems,
        sortOrder: state.sortOrder,
        selectedCategoryIds: state.selectedCategoryIds,
        distric: state.distric,
        selectedTargets: state.selectedTargets,
        selectedFacilities: state.selectedFacilities,
        userLat: lat,
        userLng: lng,
      );
      state = state.copyWith(userLat: lat, userLng: lng, items: displayed);
    } else {
      state = state.copyWith(userLat: lat, userLng: lng);
    }
  }

  Future<void> refresh() => loadInitial();
}
