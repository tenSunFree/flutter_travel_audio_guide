import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:path/path.dart' as p;
import '../../../../core/constants/app_colors.dart';
import '../../../step_tracking/di/step_tracking_providers.dart';
import '../../../step_tracking/presentation/widgets/session_summary_card.dart';
import '../../domain/entities/audio_guide.dart';
import '../../domain/services/audio_playback_service.dart';
import '../controllers/audio_player_controller.dart';
import '../widgets/common_app_bar.dart';

class AudioGuideDetailPage extends ConsumerStatefulWidget {
  const AudioGuideDetailPage({super.key, required this.guide});

  final AudioGuide guide;

  @override
  ConsumerState<AudioGuideDetailPage> createState() =>
      _AudioGuideDetailPageState();
}

class _AudioGuideDetailPageState extends ConsumerState<AudioGuideDetailPage> {
  @override
  Widget build(BuildContext context) {
    final localPath = widget.guide.localFilePath;
    if (localPath == null) {
      return Scaffold(
        appBar: AppBar(title: const Text('FUNDAY')),
        body: const Center(child: Text('找不到本地音訊檔')),
      );
    }
    final playerState = ref.watch(audioPlayerControllerProvider(localPath));
    final controller = ref.read(
      audioPlayerControllerProvider(localPath).notifier,
    );
    final stepState = ref.watch(stepTrackingControllerProvider);
    final stepController = ref.read(stepTrackingControllerProvider.notifier);
    // Notify step tracking controller on play/pause/complete transitions.
    ref.listen(audioPlayerControllerProvider(localPath), (previous, next) {
      if (next.isPlaying && !(previous?.isPlaying ?? false)) {
        stepController.onPlaybackStarted(widget.guide.title);
      } else if (!next.isPlaying && (previous?.isPlaying ?? false)) {
        // Check if this is a completion event (stopped at end of track).
        if (next.status == AudioPlaybackStatus.stopped &&
            next.duration > Duration.zero &&
            next.position >= next.duration) {
          _onGuideCompleted(context, localPath);
        } else {
          stepController.onPlaybackPaused();
        }
      }
    });
    debugPrint(
      '_AudioGuideDetailPageState, stepState.isAvailable: ${stepState.isAvailable}, stepState.hasPermission: ${stepState.hasPermission}',
    );
    return Scaffold(
      appBar: const CommonAppBar(),
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
                  color: AppColors.textPrimary,
                ),
              ),
              const SizedBox(height: 32),
              GestureDetector(
                onTap: playerState.isReady ? controller.togglePlayPause : null,
                child: Container(
                  width: 72,
                  height: 72,
                  decoration: const BoxDecoration(
                    color: AppColors.surfaceMuted,
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    playerState.isPlaying
                        ? Icons.pause_rounded
                        : Icons.play_arrow_rounded,
                    size: 40,
                    color: AppColors.iconPrimary,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Text(
                '${_formatDuration(playerState.position)} / ${_formatDuration(playerState.duration)}',
                style: const TextStyle(
                  fontSize: 14,
                  color: AppColors.textCaption,
                ),
              ),
              const SizedBox(height: 12),
              if (playerState.duration > Duration.zero)
                SizedBox(
                  width: 260,
                  child: Slider(
                    value: playerState.position.inMilliseconds
                        .clamp(0, playerState.duration.inMilliseconds)
                        .toDouble(),
                    max: playerState.duration.inMilliseconds.toDouble(),
                    onChanged: (value) {
                      controller.seek(Duration(milliseconds: value.toInt()));
                    },
                  ),
                ),
              if (playerState.errorMessage != null) ...[
                const SizedBox(height: 12),
                Text(
                  playerState.errorMessage!,
                  textAlign: TextAlign.center,
                  style: const TextStyle(color: Colors.red),
                ),
              ],
              // Step count (Android + Health Connect only)
              if (stepState.isAvailable && stepState.hasPermission) ...[
                const SizedBox(height: 24),
                _StepCountBadge(
                  steps: stepState.steps,
                  distance: stepState.distance,
                ),
              ],
            ],
          ),
        ),
      ),
    );
  }

  Future<void> _onGuideCompleted(BuildContext context, String localPath) async {
    final stepController = ref.read(stepTrackingControllerProvider.notifier);
    final summary = await stepController.onPlaybackCompleted();
    if (summary == null || !context.mounted) return;
    await showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (_) => SessionSummaryCard(summary: summary),
    );
  }

  static String _formatDuration(Duration duration) {
    String twoDigits(int n) => n.toString().padLeft(2, '0');
    final minutes = twoDigits(duration.inMinutes.remainder(60));
    final seconds = twoDigits(duration.inSeconds.remainder(60));
    return '$minutes:$seconds';
  }
}

class _StepCountBadge extends StatelessWidget {
  const _StepCountBadge({required this.steps, required this.distance});

  final int steps;
  final double distance;

  @override
  Widget build(BuildContext context) {
    final km = (distance / 1000).toStringAsFixed(1);
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      decoration: BoxDecoration(
        color: AppColors.surfaceMuted,
        borderRadius: BorderRadius.circular(24),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text('🚶', style: TextStyle(fontSize: 16)),
          const SizedBox(width: 6),
          Text(
            '$steps 步  ·  $km 公里',
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w600,
              color: AppColors.textPrimary,
            ),
          ),
        ],
      ),
    );
  }
}
