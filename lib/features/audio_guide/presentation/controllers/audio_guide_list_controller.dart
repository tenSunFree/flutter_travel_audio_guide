import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../core/constants/api_constants.dart';
import '../../di/audio_guide_providers.dart';
import '../../domain/entities/audio_guide.dart';
import '../enums/sort_filter_enums.dart';
import '../../domain/usecases/download_audio_guide_usecase.dart';
import '../../domain/usecases/get_audio_guides_usecase.dart';

class AudioGuideListState {
  const AudioGuideListState({
    required this.allItems,
    required this.items,
    required this.currentPage,
    required this.total,
    required this.hasMore,
    required this.isInitialLoading,
    required this.isLoadingMore,
    required this.downloadingIds,
    required this.errorMessage,
    required this.sortOrder,
    required this.filterType,
  });

  factory AudioGuideListState.initial() {
    return const AudioGuideListState(
      allItems: [],
      items: [],
      currentPage: 0,
      total: 0,
      hasMore: true,
      isInitialLoading: false,
      isLoadingMore: false,
      downloadingIds: <int>{},
      errorMessage: null,
      sortOrder: SortOrder.dateNewest,
      filterType: FilterType.all,
    );
  }

  /// Raw items from server (unfiltered, unsorted).
  final List<AudioGuide> allItems;

  /// Display-ready items after applying [sortOrder] and [filterType].
  final List<AudioGuide> items;

  final int currentPage;
  final int total;
  final bool hasMore;
  final bool isInitialLoading;
  final bool isLoadingMore;
  final Set<int> downloadingIds;
  final String? errorMessage;
  final SortOrder sortOrder;
  final FilterType filterType;

  bool get isDefaultFilter =>
      sortOrder == SortOrder.dateNewest && filterType == FilterType.all;

  static List<AudioGuide> computeDisplayItems(
    List<AudioGuide> rawItems,
    SortOrder sort,
    FilterType filter,
  ) {
    final filtered = switch (filter) {
      FilterType.all => [...rawItems],
      FilterType.downloaded =>
        rawItems.where((g) => g.isDownloaded).toList(),
      FilterType.notDownloaded =>
        rawItems.where((g) => !g.isDownloaded).toList(),
    };

    switch (sort) {
      case SortOrder.dateNewest:
        filtered.sort((a, b) => b.modified.compareTo(a.modified));
      case SortOrder.dateOldest:
        filtered.sort((a, b) => a.modified.compareTo(b.modified));
      case SortOrder.nameAZ:
        filtered.sort((a, b) => a.title.compareTo(b.title));
      case SortOrder.downloadedFirst:
        filtered.sort(
          (a, b) => (b.isDownloaded ? 1 : 0) - (a.isDownloaded ? 1 : 0),
        );
    }

    return filtered;
  }

  AudioGuideListState copyWith({
    List<AudioGuide>? allItems,
    List<AudioGuide>? items,
    int? currentPage,
    int? total,
    bool? hasMore,
    bool? isInitialLoading,
    bool? isLoadingMore,
    Set<int>? downloadingIds,
    String? errorMessage,
    bool clearErrorMessage = false,
    SortOrder? sortOrder,
    FilterType? filterType,
  }) {
    return AudioGuideListState(
      allItems: allItems ?? this.allItems,
      items: items ?? this.items,
      currentPage: currentPage ?? this.currentPage,
      total: total ?? this.total,
      hasMore: hasMore ?? this.hasMore,
      isInitialLoading: isInitialLoading ?? this.isInitialLoading,
      isLoadingMore: isLoadingMore ?? this.isLoadingMore,
      downloadingIds: downloadingIds ?? this.downloadingIds,
      errorMessage:
          clearErrorMessage ? null : (errorMessage ?? this.errorMessage),
      sortOrder: sortOrder ?? this.sortOrder,
      filterType: filterType ?? this.filterType,
    );
  }
}

class AudioGuideListController extends StateNotifier<AudioGuideListState> {
  AudioGuideListController({
    required GetAudioGuidesUseCase getAudioGuidesUseCase,
    required DownloadAudioGuideUseCase downloadAudioGuideUseCase,
  })  : _getAudioGuidesUseCase = getAudioGuidesUseCase,
        _downloadAudioGuideUseCase = downloadAudioGuideUseCase,
        super(AudioGuideListState.initial()) {
    loadInitial();
  }

  final GetAudioGuidesUseCase _getAudioGuidesUseCase;
  final DownloadAudioGuideUseCase _downloadAudioGuideUseCase;

  Future<void> loadInitial() async {
    if (state.isInitialLoading) return;
    state = state.copyWith(
      isInitialLoading: true,
      clearErrorMessage: true,
      currentPage: 0,
      allItems: [],
      items: [],
      total: 0,
      hasMore: true,
    );
    try {
      final page = await _getAudioGuidesUseCase(
        lang: ApiConstants.defaultLang,
        page: 1,
      );
      final newAllItems = page.items;
      state = state.copyWith(
        allItems: newAllItems,
        items: AudioGuideListState.computeDisplayItems(
          newAllItems,
          state.sortOrder,
          state.filterType,
        ),
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
      final page = await _getAudioGuidesUseCase(
        lang: ApiConstants.defaultLang,
        page: nextPage,
      );
      final newAllItems = [...state.allItems, ...page.items];
      state = state.copyWith(
        allItems: newAllItems,
        items: AudioGuideListState.computeDisplayItems(
          newAllItems,
          state.sortOrder,
          state.filterType,
        ),
        currentPage: nextPage,
        total: page.total,
        hasMore: page.hasMore,
        isLoadingMore: false,
      );
    } catch (e) {
      state = state.copyWith(isLoadingMore: false, errorMessage: e.toString());
    }
  }

  Future<String?> downloadGuide(AudioGuide guide) async {
    if (state.downloadingIds.contains(guide.id)) {
      return '該檔案正在下載中';
    }
    final nextDownloadingIds = {...state.downloadingIds, guide.id};
    state = state.copyWith(
      downloadingIds: nextDownloadingIds,
      clearErrorMessage: true,
    );
    try {
      final localPath = await _downloadAudioGuideUseCase(guide);

      final updatedAllItems = [...state.allItems];
      final allIndex = updatedAllItems.indexWhere((e) => e.id == guide.id);
      if (allIndex != -1) {
        updatedAllItems[allIndex] = updatedAllItems[allIndex].copyWith(
          isDownloaded: true,
          localFilePath: localPath,
        );
      }
      state = state.copyWith(
        allItems: updatedAllItems,
        items: AudioGuideListState.computeDisplayItems(
          updatedAllItems,
          state.sortOrder,
          state.filterType,
        ),
      );
      return null;
    } catch (e) {
      return e.toString();
    } finally {
      final afterDownloadingIds = {...state.downloadingIds}..remove(guide.id);
      state = state.copyWith(downloadingIds: afterDownloadingIds);
    }
  }

  void applySortFilter(SortOrder sortOrder, FilterType filterType) {
    state = state.copyWith(
      sortOrder: sortOrder,
      filterType: filterType,
      items: AudioGuideListState.computeDisplayItems(
        state.allItems,
        sortOrder,
        filterType,
      ),
    );
  }

  void resetSortFilter() {
    applySortFilter(SortOrder.dateNewest, FilterType.all);
  }
}

final audioGuideListControllerProvider =
    StateNotifierProvider<AudioGuideListController, AudioGuideListState>((ref) {
  return AudioGuideListController(
    getAudioGuidesUseCase: ref.watch(getAudioGuidesUseCaseProvider),
    downloadAudioGuideUseCase: ref.watch(downloadAudioGuideUseCaseProvider),
  );
});
