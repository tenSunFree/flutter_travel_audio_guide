import 'dart:async';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../core/database/database_provider.dart';
import '../../../../core/sync/app_sync_service.dart';
import '../../../../core/sync/sync_providers.dart';
import '../../domain/entities/activity.dart';
import '../enums/activity_sort_filter_enums.dart';

/// State
class ActivityListState {
  const ActivityListState({
    required this.allItems,
    required this.items,
    required this.currentPage,
    required this.total,
    required this.hasMore,
    required this.isInitialLoading,
    required this.isLoadingMore,
    required this.errorMessage,
    required this.sortOrder,
    required this.statusFilter,
    required this.feeFilter,
    required this.distric,
  });

  factory ActivityListState.initial() {
    return const ActivityListState(
      allItems: [],
      items: [],
      currentPage: 0,
      total: 0,
      hasMore: true,
      isInitialLoading: false,
      isLoadingMore: false,
      errorMessage: null,
      sortOrder: ActivitySortOrder.beginAsc,
      statusFilter: ActivityStatusFilter.all,
      feeFilter: ActivityFeeFilter.all,
      distric: '',
    );
  }

  /// Raw data retrieved by the API (unfiltered, unsorted)
  final List<Activity> allItems;

  /// A list that the UI can directly use after filtering and sorting.
  final List<Activity> items;

  final int currentPage;
  final int total;
  final bool hasMore;
  final bool isInitialLoading;
  final bool isLoadingMore;
  final String? errorMessage;

  final ActivitySortOrder sortOrder;
  final ActivityStatusFilter statusFilter;
  final ActivityFeeFilter feeFilter;

  // '' = All
  final String distric;

  /// Whether it is the default state (used for AppBar red dot + summary bar highlighting)
  bool get isDefaultFilter =>
      sortOrder == ActivitySortOrder.beginAsc &&
      statusFilter == ActivityStatusFilter.all &&
      feeFilter == ActivityFeeFilter.all &&
      distric.isEmpty;

  /// Dynamically extract administrative regions from allItems (for use by BottomSheet)
  List<String> get availableDistrics {
    final seen = <String>{};
    final result = <String>[];
    for (final a in allItems) {
      final d = a.distric.trim();
      if (d.isNotEmpty && seen.add(d)) result.add(d);
    }
    result.sort();
    return result;
  }

  // Core: Filtering + Sorting
  static List<Activity> computeDisplayItems(
    List<Activity> rawItems,
    ActivitySortOrder sort,
    ActivityStatusFilter status,
    ActivityFeeFilter fee,
    String distric,
  ) {
    final now = DateTime.now();
    const endingSoonDays = 7;
    // 1. Filtering
    final filtered = rawItems.where((a) {
      // Status Filtering
      if (status != ActivityStatusFilter.all) {
        DateTime? begin;
        DateTime? end;
        try {
          if (a.begin.isNotEmpty) begin = DateTime.parse(a.begin);
          if (a.end.isNotEmpty) end = DateTime.parse(a.end);
        } catch (_) {}
        final pass = switch (status) {
          ActivityStatusFilter.all => true,
          ActivityStatusFilter.ongoing =>
            begin != null &&
                end != null &&
                now.isAfter(begin) &&
                now.isBefore(end),
          ActivityStatusFilter.upcoming => begin != null && begin.isAfter(now),
          ActivityStatusFilter.endingSoon =>
            end != null &&
                end.isAfter(now) &&
                end.difference(now).inDays <= endingSoonDays,
        };
        if (!pass) return false;
      }
      // Fee filtering (empty ticket = free)
      if (fee != ActivityFeeFilter.all) {
        final isFree = a.ticket.trim().isEmpty;
        if (fee == ActivityFeeFilter.free && !isFree) return false;
        if (fee == ActivityFeeFilter.paid && isFree) return false;
      }
      // Administrative District Filtering
      if (distric.isNotEmpty && a.distric.trim() != distric) return false;
      return true;
    }).toList();
    // 2. Sort
    switch (sort) {
      case ActivitySortOrder.beginAsc:
        filtered.sort((a, b) => a.begin.compareTo(b.begin));
      case ActivitySortOrder.beginDesc:
        filtered.sort((a, b) => b.begin.compareTo(a.begin));
      case ActivitySortOrder.nameAZ:
        filtered.sort((a, b) => a.title.compareTo(b.title));
    }
    return filtered;
  }

  ActivityListState copyWith({
    List<Activity>? allItems,
    List<Activity>? items,
    int? currentPage,
    int? total,
    bool? hasMore,
    bool? isInitialLoading,
    bool? isLoadingMore,
    String? errorMessage,
    bool clearErrorMessage = false,
    ActivitySortOrder? sortOrder,
    ActivityStatusFilter? statusFilter,
    ActivityFeeFilter? feeFilter,
    String? distric,
  }) {
    return ActivityListState(
      allItems: allItems ?? this.allItems,
      items: items ?? this.items,
      currentPage: currentPage ?? this.currentPage,
      total: total ?? this.total,
      hasMore: hasMore ?? this.hasMore,
      isInitialLoading: isInitialLoading ?? this.isInitialLoading,
      isLoadingMore: isLoadingMore ?? this.isLoadingMore,
      errorMessage: clearErrorMessage
          ? null
          : (errorMessage ?? this.errorMessage),
      sortOrder: sortOrder ?? this.sortOrder,
      statusFilter: statusFilter ?? this.statusFilter,
      feeFilter: feeFilter ?? this.feeFilter,
      distric: distric ?? this.distric,
    );
  }
}

/// Controller
class ActivityListController extends StateNotifier<ActivityListState> {
  ActivityListController({required this.ref})
    : super(ActivityListState.initial()) {
    _init();
  }

  final Ref ref;
  StreamSubscription<List<Activity>>? _sub;

  void _init() {
    _sub = ref.read(appDatabaseProvider).activityDao.watchAll().listen(_onData);

    Future.microtask(() async {
      try {
        await ref.read(appSyncServiceProvider).syncAllIfNeeded();
      } catch (_) {}
    });
  }

  void _onData(List<Activity> all) {
    state = state.copyWith(
      allItems: all,
      items: ActivityListState.computeDisplayItems(
        all,
        state.sortOrder,
        state.statusFilter,
        state.feeFilter,
        state.distric,
      ),
      total: all.length,
      isInitialLoading: false,
      clearErrorMessage: true,
    );
  }

  Future<void> loadInitial() async {
    state = state.copyWith(isInitialLoading: true);
    try {
      await ref.read(appSyncServiceProvider).forceSync(SyncTarget.activities);
    } catch (e) {
      state = state.copyWith(errorMessage: e.toString());
    } finally {
      state = state.copyWith(isInitialLoading: false);
    }
  }

  Future<void> loadMore() async {}

  void applySortFilter({
    required ActivitySortOrder sortOrder,
    required ActivityStatusFilter statusFilter,
    required ActivityFeeFilter feeFilter,
    required String distric,
  }) {
    state = state.copyWith(
      sortOrder: sortOrder,
      statusFilter: statusFilter,
      feeFilter: feeFilter,
      distric: distric,
      items: ActivityListState.computeDisplayItems(
        state.allItems,
        sortOrder,
        statusFilter,
        feeFilter,
        distric,
      ),
    );
  }

  void resetSortFilter() {
    applySortFilter(
      sortOrder: ActivitySortOrder.beginAsc,
      statusFilter: ActivityStatusFilter.all,
      feeFilter: ActivityFeeFilter.all,
      distric: '',
    );
  }

  @override
  void dispose() {
    _sub?.cancel();
    super.dispose();
  }
}

/// Provider
final activityListControllerProvider =
    StateNotifierProvider<ActivityListController, ActivityListState>((ref) {
      return ActivityListController(ref: ref);
    });
