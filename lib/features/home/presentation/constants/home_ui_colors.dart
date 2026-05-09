import 'package:flutter/material.dart';

/// UI constants specific to the homepage.
/// For general colors (textPrimary, textSecondary, surface, divider…), please use AppColors from core/constants/app_colors.dart directly to maintain consistency across the entire project.
/// Only colors unique to the homepage and not found in AppColors are listed here.
class HomeUiColors {
  const HomeUiColors._();

  /// Background color (light blue) when the time period chip is selected.
  static const selectedBg = Color(0xFFD8F3F7);

  /// "View All" and other accent text colors
  static const accent = Color(0xFF6BAEC3);

  /// Attraction Type Badge — Blue Series
  static const typeBadgeBg = Color(0xFFE4F1FF);
  static const typeBadgeText = Color(0xFF2F6FA3);

  /// Recommended tag badge — orange family
  static const recoBadgeBg = Color(0xFFFFF3D8);
  static const recoBadgeText = Color(0xFF9B651B);
}
