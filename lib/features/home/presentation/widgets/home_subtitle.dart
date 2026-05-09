import 'package:flutter/material.dart';
import '../../../../core/constants/app_colors.dart';

class HomeSubtitle extends StatelessWidget {
  const HomeSubtitle({super.key, required this.subtitle});

  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.surface,
      padding: const EdgeInsets.fromLTRB(24, 16, 24, 8),
      child: Text(
        subtitle,
        style: const TextStyle(
          color: AppColors.textSecondary,
          fontSize: 16,
          fontWeight: FontWeight.w600,
          height: 1.4,
        ),
      ),
    );
  }
}
