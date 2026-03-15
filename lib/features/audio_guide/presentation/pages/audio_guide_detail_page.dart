import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:path/path.dart' as p;
import '../../domain/entities/audio_guide.dart';
import '../controllers/audio_player_controller.dart';

class AudioGuideDetailPage extends ConsumerWidget {
  const AudioGuideDetailPage({super.key, required this.guide});

  final AudioGuide guide;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final localPath = guide.localFilePath;

    if (localPath == null) {
      return Scaffold(
        appBar: AppBar(title: const Text('FUNDAY')),
        body: const Center(child: Text('找不到本地音訊檔')),
      );
    }

    final state = ref.watch(audioPlayerControllerProvider(localPath));
    final controller = ref.read(
      audioPlayerControllerProvider(localPath).notifier,
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'FUNDAY',
          style: TextStyle(fontWeight: FontWeight.w800),
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                p.basename(localPath),
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.w800,
                  color: Color(0xFF333333),
                ),
              ),
              const SizedBox(height: 32),
              GestureDetector(
                onTap: state.isReady ? controller.togglePlayPause : null,
                child: Container(
                  width: 72,
                  height: 72,
                  decoration: const BoxDecoration(
                    color: Color(0xFFEEEEEE),
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    state.isPlaying
                        ? Icons.pause_rounded
                        : Icons.play_arrow_rounded,
                    size: 40,
                    color: const Color(0xFF444444),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Text(
                '${_formatDuration(state.position)} / ${_formatDuration(state.duration)}',
                style: const TextStyle(fontSize: 14, color: Color(0xFF666666)),
              ),
              const SizedBox(height: 12),
              if (state.duration > Duration.zero)
                SizedBox(
                  width: 260,
                  child: Slider(
                    value: state.position.inMilliseconds
                        .clamp(0, state.duration.inMilliseconds)
                        .toDouble(),
                    max: state.duration.inMilliseconds.toDouble(),
                    onChanged: (value) {
                      controller.seek(Duration(milliseconds: value.toInt()));
                    },
                  ),
                ),
              if (state.errorMessage != null) ...[
                const SizedBox(height: 12),
                Text(
                  state.errorMessage!,
                  textAlign: TextAlign.center,
                  style: const TextStyle(color: Colors.red),
                ),
              ],
            ],
          ),
        ),
      ),
    );
  }

  static String _formatDuration(Duration duration) {
    String twoDigits(int n) => n.toString().padLeft(2, '0');
    final minutes = twoDigits(duration.inMinutes.remainder(60));
    final seconds = twoDigits(duration.inSeconds.remainder(60));
    return '$minutes:$seconds';
  }
}
