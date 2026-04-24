import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../domain/entities/attraction.dart';
import '../../domain/usecases/get_attractions_usecase.dart';

// State
class AttractionListState {
  const AttractionListState({
    this.items = const [],
    this.page = 1,
    this.total = 0,
    this.isLoading = false,
    this.isLoadingMore = false,
    this.hasMore = true,
    this.errorMessage,
  });

  final List<Attraction> items;
  final int page;
  final int total;
  final bool isLoading;
  final bool isLoadingMore;
  final bool hasMore;
  final String? errorMessage;

  AttractionListState copyWith({
    List<Attraction>? items,
    int? page,
    int? total,
    bool? isLoading,
    bool? isLoadingMore,
    bool? hasMore,
    String? errorMessage,
    bool clearError = false,
  }) {
    return AttractionListState(
      items: items ?? this.items,
      page: page ?? this.page,
      total: total ?? this.total,
      isLoading: isLoading ?? this.isLoading,
      isLoadingMore: isLoadingMore ?? this.isLoadingMore,
      hasMore: hasMore ?? this.hasMore,
      errorMessage: clearError ? null : errorMessage ?? this.errorMessage,
    );
  }
}

// Controller
class AttractionListController extends StateNotifier<AttractionListState> {
  AttractionListController(this._getAttractionsUseCase)
    : super(const AttractionListState()) {
    loadInitial();
  }

  final GetAttractionsUseCase _getAttractionsUseCase;

  Future<void> loadInitial() async {
    if (state.isLoading) return;
    state = state.copyWith(
      isLoading: true,
      page: 1,
      items: const [],
      hasMore: true,
      clearError: true,
    );
    try {
      final result = await _getAttractionsUseCase(page: 1);
      state = state.copyWith(
        items: result.data,
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
      final result = await _getAttractionsUseCase(page: nextPage);
      final merged = [...state.items, ...result.data];
      state = state.copyWith(
        items: merged,
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

  Future<void> refresh() => loadInitial();
}
