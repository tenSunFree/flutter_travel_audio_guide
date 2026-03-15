import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../core/constants/api_constants.dart';
import '../../di/audio_guide_providers.dart';
import '../../domain/entities/audio_guide.dart';
import '../../domain/usecases/download_audio_guide_usecase.dart';
import '../../domain/usecases/get_audio_guides_usecase.dart';

class AudioGuideListState {
  const AudioGuideListState({
    required this.items,
    required this.currentPage,
    required this.total,
    required this.hasMore,
    required this.isInitialLoading,
    required this.isLoadingMore,
    required this.downloadingIds,
    required this.errorMessage,
  });

  factory AudioGuideListState.initial() {
    return const AudioGuideListState(
      items: [],
      currentPage: 0,
      total: 0,
      hasMore: true,
      isInitialLoading: false,
      isLoadingMore: false,
      downloadingIds: <int>{},
      errorMessage: null,
    );
  }

  final List<AudioGuide> items;
  final int currentPage;
  final int total;
  final bool hasMore;
  final bool isInitialLoading;
  final bool isLoadingMore;
  final Set<int> downloadingIds;
  final String? errorMessage;

  AudioGuideListState copyWith({
    List<AudioGuide>? items,
    int? currentPage,
    int? total,
    bool? hasMore,
    bool? isInitialLoading,
    bool? isLoadingMore,
    Set<int>? downloadingIds,
    String? errorMessage,
    bool clearErrorMessage = false,
  }) {
    return AudioGuideListState(
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
    );
  }
}

class AudioGuideListController extends StateNotifier<AudioGuideListState> {
  AudioGuideListController({
    required GetAudioGuidesUseCase getAudioGuidesUseCase,
    required DownloadAudioGuideUseCase downloadAudioGuideUseCase,
  }) : _getAudioGuidesUseCase = getAudioGuidesUseCase,
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
      items: [],
      total: 0,
      hasMore: true,
    );
    try {
      final page = await _getAudioGuidesUseCase(
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
      final page = await _getAudioGuidesUseCase(
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
      final updatedItems = [...state.items];
      final index = updatedItems.indexWhere(
        (element) => element.id == guide.id,
      );
      if (index != -1) {
        updatedItems[index] = updatedItems[index].copyWith(
          isDownloaded: true,
          localFilePath: localPath,
        );
      }
      state = state.copyWith(items: updatedItems);
      return null;
    } catch (e) {
      return e.toString();
    } finally {
      final afterDownloadingIds = {...state.downloadingIds}..remove(guide.id);
      state = state.copyWith(downloadingIds: afterDownloadingIds);
    }
  }
}

final audioGuideListControllerProvider =
    StateNotifierProvider<AudioGuideListController, AudioGuideListState>((ref) {
      return AudioGuideListController(
        getAudioGuidesUseCase: ref.watch(getAudioGuidesUseCaseProvider),
        downloadAudioGuideUseCase: ref.watch(downloadAudioGuideUseCaseProvider),
      );
    });
