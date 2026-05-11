import 'dart:async';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../core/monitoring/monitoring_service.dart';
import '../../di/audio_guide_providers.dart';
import '../../domain/entities/audio_playback_state.dart';
import '../../domain/services/audio_playback_service.dart';

final audioPlayerControllerProvider = StateNotifierProvider.autoDispose
    .family<AudioPlayerController, AudioPlaybackState, String>((ref, path) {
      final service = ref.watch(audioPlaybackServiceProvider(path));
      return AudioPlayerController(service, path);
    });

class AudioPlayerController extends StateNotifier<AudioPlaybackState> {
  AudioPlayerController(this._service, this._path)
    : super(const AudioPlaybackState()) {
    _init();
  }

  final AudioPlaybackService _service;
  final String _path;

  StreamSubscription<AudioPlaybackState>? _subscription;

  // Critical business path: Player initialization
  // - Breadcrumb records the start of initialization
  // - MonitorFuture establishes a performance transaction (operation: audio.player.initialize)
  // - Failure: Do not rethrow (change to updating state), and simultaneously captureException report.
  Future<void> _init() async {
    // First listen to the stream to ensure that all state changes during the initialization process are captured.
    _subscription = _service.stateStream.listen((playbackState) {
      state = playbackState;
    });
    await MonitoringService.addBreadcrumb(
      message: 'Start audio player initialization',
      category: 'audio.player',
      data: {'file_path': _path},
    );
    try {
      await MonitoringService.monitorFuture<void>(
        name: 'Audio Player Initialization',
        operation: 'audio.player.initialize',
        description: _path,
        extras: {'file_path': _path},
        action: () => _service.initialize(_path),
      );
      await MonitoringService.addBreadcrumb(
        message: 'Audio player initialization success',
        category: 'audio.player',
        data: {'file_path': _path},
      );
    } catch (e) {
      // Player initialization failure is a user-visible error and should not cause the controller to crash.
      // The monitorFuture has already reported this to Sentry; only the UI state is updated here.
      // (If you want double confirmation, you can call captureException again, but this is usually unnecessary.)
      if (mounted) {
        state = state.copyWith(
          status: AudioPlaybackStatus.error,
          errorMessage: '播放器初始化失敗：$e',
        );
      }
    }
  }

  Future<void> togglePlayPause() async {
    if (!state.isReady) return;
    if (state.isPlaying) {
      await _service.pause();
      return;
    }
    if (state.status == AudioPlaybackStatus.stopped &&
        state.duration > Duration.zero &&
        state.position >= state.duration) {
      await _service.seek(Duration.zero);
    }
    await _service.play();
  }

  Future<void> seek(Duration position) async {
    if (!state.isReady) return;
    await _service.seek(position);
  }

  @override
  void dispose() {
    _subscription?.cancel();
    super.dispose();
  }
}
