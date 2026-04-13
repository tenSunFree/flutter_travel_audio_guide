import 'dart:async';
import '../entities/audio_playback_state.dart';

abstract class AudioPlaybackService {
  Stream<AudioPlaybackState> get stateStream;

  Future<void> initialize(String filePath);

  Future<void> play();

  Future<void> pause();

  Future<void> seek(Duration position);

  Future<void> dispose();
}
