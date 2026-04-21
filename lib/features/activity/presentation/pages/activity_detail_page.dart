import 'package:flutter/material.dart';
import 'package:flutter_widget_from_html_core/flutter_widget_from_html_core.dart';
import '../../../../core/constants/app_colors.dart';
import '../../domain/entities/activity.dart';

class ActivityDetailPage extends StatelessWidget {
  const ActivityDetailPage({super.key, required this.activity});

  final Activity activity;

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
      return raw.split(' ').first;
    }
  }

  @override
  Widget build(BuildContext context) {
    final beginStr = _formatDate(activity.begin);
    final endStr = _formatDate(activity.end);
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          '活動展演',
          style: TextStyle(fontWeight: FontWeight.w800),
        ),
        centerTitle: false,
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(1),
          child: Divider(height: 1, thickness: 1, color: AppColors.divider),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Title
            Text(
              activity.title,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w800,
                color: AppColors.textPrimary,
                height: 1.4,
              ),
            ),
            const SizedBox(height: 16),
            // Basic Information Card
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(14),
              decoration: BoxDecoration(
                color: AppColors.scaffoldBackground,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if (beginStr.isNotEmpty || endStr.isNotEmpty)
                    _InfoRow(
                      icon: Icons.calendar_today_outlined,
                      label: '展期',
                      value: '$beginStr ～ $endStr',
                    ),
                  if (activity.organizer.isNotEmpty) ...[
                    const SizedBox(height: 8),
                    _InfoRow(
                      icon: Icons.business_outlined,
                      label: '主辦',
                      value: activity.organizer,
                    ),
                  ],
                  if (activity.address.isNotEmpty) ...[
                    const SizedBox(height: 8),
                    _InfoRow(
                      icon: Icons.location_on_outlined,
                      label: '地點',
                      value: activity.address,
                    ),
                  ],
                  if (activity.tel.isNotEmpty) ...[
                    const SizedBox(height: 8),
                    _InfoRow(
                      icon: Icons.phone_outlined,
                      label: '電話',
                      value: activity.tel,
                    ),
                  ],
                  if (activity.ticket.isNotEmpty) ...[
                    const SizedBox(height: 8),
                    _InfoRow(
                      icon: Icons.confirmation_number_outlined,
                      label: '票價',
                      value: activity.ticket,
                    ),
                  ],
                ],
              ),
            ),
            const SizedBox(height: 20),
            const Divider(color: AppColors.divider),
            const SizedBox(height: 16),
            // Activity Description: Full HTML Rendering
            HtmlWidget(
              activity.description,
              textStyle: const TextStyle(
                fontSize: 15,
                height: 1.8,
                color: AppColors.textPrimary,
              ),
            ),
            // Related Links
            if (activity.links.isNotEmpty) ...[
              const SizedBox(height: 24),
              const Divider(color: AppColors.divider),
              const SizedBox(height: 12),
              const Text(
                '相關連結',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                  color: AppColors.textPrimary,
                ),
              ),
              const SizedBox(height: 8),
              ...activity.links.map((link) => _LinkRow(link: link)),
            ],
            const SizedBox(height: 32),
          ],
        ),
      ),
    );
  }
}

// Small widget: Information column
class _InfoRow extends StatelessWidget {
  const _InfoRow({
    required this.icon,
    required this.label,
    required this.value,
  });

  final IconData icon;
  final String label;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(icon, size: 16, color: AppColors.textCaption),
        const SizedBox(width: 6),
        SizedBox(
          width: 40,
          child: Text(
            label,
            style: const TextStyle(
              fontSize: 13,
              color: AppColors.textCaption,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        Expanded(
          child: Text(
            value,
            style: const TextStyle(fontSize: 13, color: AppColors.textPrimary),
          ),
        ),
      ],
    );
  }
}

// Small widget: Link column (click to open URL — requires the url_launcher kit)
// This is presented in plain text for now, without including any additional kits.
class _LinkRow extends StatelessWidget {
  const _LinkRow({required this.link});

  final ActivityLink link;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Row(
        children: [
          const Icon(Icons.link, size: 16, color: AppColors.textCaption),
          const SizedBox(width: 6),
          Expanded(
            child: Text(
              link.subject.isNotEmpty ? link.subject : link.src,
              style: TextStyle(
                fontSize: 13,
                color: Theme.of(context).colorScheme.primary,
                decoration: TextDecoration.underline,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
