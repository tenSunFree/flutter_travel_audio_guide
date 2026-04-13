enum AudioPlaybackStatus { initial, loading, playing, paused, stopped, error }

class AudioPlaybackState {
  const AudioPlaybackState({
    this.status = AudioPlaybackStatus.initial,
    this.position = Duration.zero,
    this.duration = Duration.zero,
    this.errorMessage,
  });

  final AudioPlaybackStatus status;
  final Duration position;
  final Duration duration;
  final String? errorMessage;

  bool get isReady =>
      status == AudioPlaybackStatus.playing ||
      status == AudioPlaybackStatus.paused ||
      status == AudioPlaybackStatus.stopped;

  bool get isPlaying => status == AudioPlaybackStatus.playing;

  bool get isLoading => status == AudioPlaybackStatus.loading;

  bool get hasError => status == AudioPlaybackStatus.error;

  bool get isCompleted =>
      status == AudioPlaybackStatus.stopped &&
      duration > Duration.zero &&
      position >= duration;

  AudioPlaybackState copyWith({
    AudioPlaybackStatus? status,
    Duration? position,
    Duration? duration,
    String? errorMessage,
    bool clearError = false,
  }) {
    return AudioPlaybackState(
      status: status ?? this.status,
      position: position ?? this.position,
      duration: duration ?? this.duration,
      errorMessage: clearError ? null : (errorMessage ?? this.errorMessage),
    );
  }
}
