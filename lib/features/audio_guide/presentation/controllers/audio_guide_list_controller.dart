import 'dart:async';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../core/database/database_provider.dart';
import '../../../../core/sync/app_sync_service.dart';
import '../../../../core/sync/sync_providers.dart';
import '../../di/audio_guide_providers.dart';
import '../../domain/entities/audio_guide.dart';
import '../../domain/usecases/download_audio_guide_usecase.dart';
import '../enums/sort_filter_enums.dart';

/// State
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

  final List<AudioGuide> allItems;
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
      FilterType.downloaded => rawItems.where((g) => g.isDownloaded).toList(),
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
      errorMessage: clearErrorMessage
          ? null
          : (errorMessage ?? this.errorMessage),
      sortOrder: sortOrder ?? this.sortOrder,
      filterType: filterType ?? this.filterType,
    );
  }
}

/// Controller
class AudioGuideListController extends StateNotifier<AudioGuideListState> {
  AudioGuideListController({
    required this.ref,
    required DownloadAudioGuideUseCase downloadAudioGuideUseCase,
  }) : _downloadAudioGuideUseCase = downloadAudioGuideUseCase,
       super(AudioGuideListState.initial()) {
    _init();
  }

  final Ref ref;
  final DownloadAudioGuideUseCase _downloadAudioGuideUseCase;
  StreamSubscription<List<AudioGuide>>? _sub;

  void _init() {
    _sub = ref
        .read(appDatabaseProvider)
        .audioGuideDao
        .watchAll()
        .listen(_onData);
    Future.microtask(() async {
      try {
        await ref.read(appSyncServiceProvider).syncAllIfNeeded();
      } catch (_) {}
    });
  }

  void _onData(List<AudioGuide> all) {
    state = state.copyWith(
      allItems: all,
      items: AudioGuideListState.computeDisplayItems(
        all,
        state.sortOrder,
        state.filterType,
      ),
      total: all.length,
      isInitialLoading: false,
      clearErrorMessage: true,
    );
  }

  // Pull-to-refresh
  Future<void> loadInitial() async {
    state = state.copyWith(isInitialLoading: true);
    try {
      await ref.read(appSyncServiceProvider).forceSync(SyncTarget.audioGuides);
    } catch (e) {
      state = state.copyWith(errorMessage: e.toString());
    } finally {
      state = state.copyWith(isInitialLoading: false);
    }
  }

  Future<void> loadMore() async {}

  void applySortFilter(SortOrder sort, FilterType filter) {
    state = state.copyWith(
      sortOrder: sort,
      filterType: filter,
      items: AudioGuideListState.computeDisplayItems(
        state.allItems,
        sort,
        filter,
      ),
    );
  }

  void resetSortFilter() =>
      applySortFilter(SortOrder.dateNewest, FilterType.all);

  // download
  Future<String?> downloadGuide(AudioGuide guide) async {
    state = state.copyWith(downloadingIds: {...state.downloadingIds, guide.id});
    try {
      final localPath = await _downloadAudioGuideUseCase(guide);
      await ref
          .read(appDatabaseProvider)
          .audioGuideDao
          .markAsDownloaded(id: guide.id, localFilePath: localPath);
      return null;
    } catch (e) {
      return e.toString();
    } finally {
      final ids = {...state.downloadingIds}..remove(guide.id);
      state = state.copyWith(downloadingIds: ids);
    }
  }

  @override
  void dispose() {
    _sub?.cancel();
    super.dispose();
  }
}

/// Provider
final audioGuideListControllerProvider =
    StateNotifierProvider<AudioGuideListController, AudioGuideListState>((ref) {
      return AudioGuideListController(
        ref: ref,
        downloadAudioGuideUseCase: ref.watch(downloadAudioGuideUseCaseProvider),
      );
    });
