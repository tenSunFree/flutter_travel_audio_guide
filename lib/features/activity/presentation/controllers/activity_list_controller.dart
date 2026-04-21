import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../core/constants/api_constants.dart';
import '../../di/activity_providers.dart';
import '../../domain/entities/activity.dart';
import '../../domain/usecases/get_activities_usecase.dart';

/// State
class ActivityListState {
  const ActivityListState({
    required this.items,
    required this.currentPage,
    required this.total,
    required this.hasMore,
    required this.isInitialLoading,
    required this.isLoadingMore,
    required this.errorMessage,
  });

  factory ActivityListState.initial() {
    return const ActivityListState(
      items: [],
      currentPage: 0,
      total: 0,
      hasMore: true,
      isInitialLoading: false,
      isLoadingMore: false,
      errorMessage: null,
    );
  }

  final List<Activity> items;
  final int currentPage;
  final int total;
  final bool hasMore;
  final bool isInitialLoading;
  final bool isLoadingMore;
  final String? errorMessage;

  ActivityListState copyWith({
    List<Activity>? items,
    int? currentPage,
    int? total,
    bool? hasMore,
    bool? isInitialLoading,
    bool? isLoadingMore,
    String? errorMessage,
    bool clearErrorMessage = false,
  }) {
    return ActivityListState(
      items: items ?? this.items,
      currentPage: currentPage ?? this.currentPage,
      total: total ?? this.total,
      hasMore: hasMore ?? this.hasMore,
      isInitialLoading: isInitialLoading ?? this.isInitialLoading,
      isLoadingMore: isLoadingMore ?? this.isLoadingMore,
      errorMessage: clearErrorMessage
          ? null
          : (errorMessage ?? this.errorMessage),
    );
  }
}

/// Controller
class ActivityListController extends StateNotifier<ActivityListState> {
  ActivityListController({required GetActivitiesUseCase getActivitiesUseCase})
    : _getActivitiesUseCase = getActivitiesUseCase,
      super(ActivityListState.initial()) {
    loadInitial();
  }

  final GetActivitiesUseCase _getActivitiesUseCase;

  Future<void> loadInitial() async {
    if (state.isInitialLoading) return;
    state = state.copyWith(
      isInitialLoading: true,
      clearErrorMessage: true,
      items: [],
      currentPage: 0,
      total: 0,
      hasMore: true,
    );
    try {
      final page = await _getActivitiesUseCase(
        lang: ApiConstants.defaultLang,
        page: 1,
      );
      state = state.copyWith(
        items: page.items,
        currentPage: 1,
        total: page.total,
        hasMore: page.hasMore,
        isInitialLoading: false,
      );
    } catch (e) {
      state = state.copyWith(
        isInitialLoading: false,
        errorMessage: e.toString(),
      );
    }
  }

  Future<void> loadMore() async {
    if (state.isInitialLoading || state.isLoadingMore || !state.hasMore) return;
    state = state.copyWith(isLoadingMore: true, clearErrorMessage: true);
    try {
      final nextPage = state.currentPage + 1;
      final page = await _getActivitiesUseCase(
        lang: ApiConstants.defaultLang,
        page: nextPage,
      );
      state = state.copyWith(
        items: [...state.items, ...page.items],
        currentPage: nextPage,
        total: page.total,
        hasMore: page.hasMore,
        isLoadingMore: false,
      );
    } catch (e) {
      state = state.copyWith(isLoadingMore: false, errorMessage: e.toString());
    }
  }
}

/// Provider
final activityListControllerProvider =
    StateNotifierProvider<ActivityListController, ActivityListState>((ref) {
      return ActivityListController(
        getActivitiesUseCase: ref.watch(getActivitiesUseCaseProvider),
      );
    });
