import 'dart:async';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final audioPlayerControllerProvider = StateNotifierProvider.autoDispose
    .family<AudioPlayerController, AudioPlayerUiState, String>((ref, filePath) {
      return AudioPlayerController(filePath);
    });

class AudioPlayerUiState {
  const AudioPlayerUiState({
    required this.playerState,
    required this.position,
    required this.duration,
    required this.isReady,
    required this.errorMessage,
  });

  factory AudioPlayerUiState.initial() {
    return const AudioPlayerUiState(
      playerState: PlayerState.stopped,
      position: Duration.zero,
      duration: Duration.zero,
      isReady: false,
      errorMessage: null,
    );
  }

  final PlayerState playerState;
  final Duration position;
  final Duration duration;
  final bool isReady;
  final String? errorMessage;

  bool get isPlaying => playerState == PlayerState.playing;

  AudioPlayerUiState copyWith({
    PlayerState? playerState,
    Duration? position,
    Duration? duration,
    bool? isReady,
    String? errorMessage,
    bool clearError = false,
  }) {
    return AudioPlayerUiState(
      playerState: playerState ?? this.playerState,
      position: position ?? this.position,
      duration: duration ?? this.duration,
      isReady: isReady ?? this.isReady,
      errorMessage: clearError ? null : (errorMessage ?? this.errorMessage),
    );
  }
}

class AudioPlayerController extends StateNotifier<AudioPlayerUiState> {
  AudioPlayerController(this._filePath) : super(AudioPlayerUiState.initial()) {
    _init();
  }

  final String _filePath;
  final AudioPlayer _player = AudioPlayer();
  final List<StreamSubscription<dynamic>> _subscriptions = [];

  Future<void> _init() async {
    _subscriptions.add(
      _player.onDurationChanged.listen((duration) {
        state = state.copyWith(duration: duration);
      }),
    );
    _subscriptions.add(
      _player.onPositionChanged.listen((position) {
        state = state.copyWith(position: position);
      }),
    );
    _subscriptions.add(
      _player.onPlayerStateChanged.listen((playerState) {
        state = state.copyWith(playerState: playerState);
      }),
    );
    _subscriptions.add(
      _player.onPlayerComplete.listen((_) {
        state = state.copyWith(
          playerState: PlayerState.stopped,
          position: state.duration,
        );
      }),
    );
    try {
      await _player.setReleaseMode(ReleaseMode.stop);
      await _player.setSource(DeviceFileSource(_filePath));
      state = state.copyWith(isReady: true, clearError: true);
    } catch (e) {
      state = state.copyWith(errorMessage: '播放器初始化失敗：$e');
    }
  }

  Future<void> togglePlayPause() async {
    if (!state.isReady) return;
    try {
      if (state.isPlaying) {
        await _player.pause();
        return;
      }
      if (state.duration > Duration.zero && state.position >= state.duration) {
        await _player.seek(Duration.zero);
      }
      await _player.resume();
    } catch (e) {
      state = state.copyWith(errorMessage: '播放失敗：$e');
    }
  }

  Future<void> seek(Duration position) async {
    try {
      await _player.seek(position);
    } catch (e) {
      state = state.copyWith(errorMessage: '跳轉失敗：$e');
    }
  }

  @override
  void dispose() {
    for (final subscription in _subscriptions) {
      subscription.cancel();
    }
    unawaited(_player.dispose());
    super.dispose();
  }
}
