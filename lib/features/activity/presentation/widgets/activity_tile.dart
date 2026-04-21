import 'package:flutter/material.dart';
import '../../../../core/constants/app_colors.dart';
import '../../domain/entities/activity.dart';

class ActivityTile extends StatelessWidget {
  const ActivityTile({super.key, required this.activity, required this.onTap});

  final Activity activity;
  final VoidCallback onTap;

  /// "2026-03-26 00:00:00 +08:00" → "2026/03/26"
  static String _formatDate(String raw) {
    if (raw.isEmpty) return '';
    try {
      final dt = DateTime.parse(raw);
      final y = dt.year;
      final m = dt.month.toString().padLeft(2, '0');
      final d = dt.day.toString().padLeft(2, '0');
      return '$y/$m/$d';
    } catch (_) {
      // If parsing fails, just take the date portion.
      return raw.split(' ').first;
    }
  }

  /// Remove HTML tags to get a plain text preview
  static String _htmlToPlainText(String html, {int maxLength = 100}) {
    final text = html
        .replaceAll(RegExp(r'<br\s*/?>', caseSensitive: false), '\n')
        .replaceAll(RegExp(r'<[^>]*>'), '')
        .replaceAll('&nbsp;', ' ')
        .replaceAll('&mdash;', '—')
        .replaceAll('&ndash;', '–')
        .replaceAll('&quot;', '"')
        .replaceAll('&amp;', '&')
        .replaceAll('&lt;', '<')
        .replaceAll('&gt;', '>')
        .replaceAll(RegExp(r'\n{2,}'), '\n')
        .trim();
    if (text.length <= maxLength) return text;
    return '${text.substring(0, maxLength)}…';
  }

  @override
  Widget build(BuildContext context) {
    final preview = _htmlToPlainText(activity.description);
    final dateRange =
        '${_formatDate(activity.begin)}  ～  ${_formatDate(activity.end)}';
    return InkWell(
      onTap: onTap,
      child: Container(
        color: AppColors.surface,
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Title
            Text(
              activity.title,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w700,
                color: AppColors.textPrimary,
              ),
            ),
            const SizedBox(height: 6),
            // date
            if (activity.begin.isNotEmpty || activity.end.isNotEmpty)
              Text(
                dateRange,
                style: const TextStyle(
                  fontSize: 12,
                  color: AppColors.textCaption,
                ),
              ),
            // Organizer
            if (activity.organizer.isNotEmpty) ...[
              const SizedBox(height: 4),
              Text(
                activity.organizer,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  fontSize: 12,
                  color: AppColors.textCaption,
                ),
              ),
            ],
            // Plain text preview (description HTML untagged version)
            if (preview.isNotEmpty) ...[
              const SizedBox(height: 8),
              Text(
                preview,
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  fontSize: 13,
                  height: 1.5,
                  color: AppColors.textSecondary,
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }
}
