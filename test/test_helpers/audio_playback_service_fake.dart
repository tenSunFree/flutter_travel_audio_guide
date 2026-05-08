import 'dart:async';
import 'package:flutter_travel_audio_guide/features/audio_guide/domain/entities/audio_playback_state.dart';
import 'package:flutter_travel_audio_guide/features/audio_guide/domain/services/audio_playback_service.dart';

class FakeAudioPlaybackService implements AudioPlaybackService {
  final _controller = StreamController<AudioPlaybackState>.broadcast();

  String? initializedPath;
  int initializeCallCount = 0;
  int playCallCount = 0;
  int pauseCallCount = 0;
  int seekCallCount = 0;
  int disposeCallCount = 0;
  final List<Duration> seekPositions = <Duration>[];

  @override
  Stream<AudioPlaybackState> get stateStream => _controller.stream;

  void emit(AudioPlaybackState state) {
    _controller.add(state);
  }

  @override
  Future<void> initialize(String filePath) async {
    initializeCallCount++;
    initializedPath = filePath;
  }

  @override
  Future<void> play() async {
    playCallCount++;
  }

  @override
  Future<void> pause() async {
    pauseCallCount++;
  }

  @override
  Future<void> seek(Duration position) async {
    seekCallCount++;
    seekPositions.add(position);
  }

  @override
  Future<void> dispose() async {
    disposeCallCount++;
    await _controller.close();
  }
}
