import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';
import '../../features/home/presentation/utils/home_navigation_launcher.dart';
import '../constants/app_colors.dart';

/// Navigation + share button column, shared by the three detail pages.
///
/// How to use:
/// ```dart
/// DetailActionButtons(
///   navigateName: attraction.name,
///   navigateLat: attraction.nlat,
///   navigateLng: attraction.elong,
///   shareText: '...',
/// )
/// ```
class DetailActionButtons extends StatefulWidget {
  const DetailActionButtons({
    super.key,
    required this.navigateName,
    this.navigateLat,
    this.navigateLng,
    required this.shareText,
    this.shareLabel = '分享',
  });

  /// The name of the location to send to Google Maps (required)
  final String navigateName;

  /// Latitude (nullable, search by name only if no coordinates are available)
  final double? navigateLat;

  /// Longitude (nullable)
  final double? navigateLng;

  /// Share content text
  final String shareText;

  /// Display text on the share button, default is "Share"
  final String shareLabel;

  @override
  State<DetailActionButtons> createState() => _DetailActionButtonsState();
}

class _DetailActionButtonsState extends State<DetailActionButtons> {
  bool _navigating = false;

  Future<void> _onNavigate() async {
    if (_navigating) return;
    setState(() => _navigating = true);
    try {
      await HomeNavigationLauncher.openBest(
        context,
        name: widget.navigateName,
        lat: widget.navigateLat,
        lng: widget.navigateLng,
      );
    } finally {
      if (mounted) setState(() => _navigating = false);
    }
  }

  Future<void> _onShare() async {
    await SharePlus.instance.share(ShareParams(text: widget.shareText));
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: OutlinedButton.icon(
            style: OutlinedButton.styleFrom(
              foregroundColor: AppColors.textPrimary,
              side: const BorderSide(color: AppColors.divider),
              minimumSize: const Size.fromHeight(50),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            onPressed: _navigating ? null : _onNavigate,
            icon: _navigating
                ? const SizedBox(
                    width: 18,
                    height: 18,
                    child: CircularProgressIndicator(
                      strokeWidth: 2,
                      valueColor: AlwaysStoppedAnimation(AppColors.textPrimary),
                    ),
                  )
                : const Icon(Icons.navigation_outlined, size: 18),
            label: const Text(
              '導航',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w800),
            ),
          ),
        ),
        const SizedBox(width: 12),
        Expanded(
          child: OutlinedButton.icon(
            style: OutlinedButton.styleFrom(
              foregroundColor: AppColors.textPrimary,
              side: const BorderSide(color: AppColors.divider),
              minimumSize: const Size.fromHeight(50),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            onPressed: _onShare,
            icon: const Icon(Icons.share_outlined, size: 18),
            label: Text(
              widget.shareLabel,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w800),
            ),
          ),
        ),
      ],
    );
  }
}
