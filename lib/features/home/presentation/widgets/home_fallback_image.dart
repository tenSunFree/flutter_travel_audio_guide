import 'package:flutter/material.dart';
import '../../../../core/constants/app_colors.dart';

/// A backup block of emojis to display when an image fails to load.
class HomeFallbackImage extends StatelessWidget {
  const HomeFallbackImage(this.emoji, {super.key});

  final String emoji;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.surfaceMuted,
      alignment: Alignment.center,
      child: Text(emoji, style: const TextStyle(fontSize: 34)),
    );
  }
}
