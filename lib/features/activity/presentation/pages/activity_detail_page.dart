import 'package:flutter/material.dart';
import 'package:flutter_widget_from_html_core/flutter_widget_from_html_core.dart';
import '../../../../core/constants/app_colors.dart';
import '../../domain/entities/activity.dart';

class ActivityDetailPage extends StatelessWidget {
  const ActivityDetailPage({super.key, required this.activity});

  final Activity activity;

  // The root domain of the travel.taipei website (Note: not the /open-api path of the API)
  static const String _siteBaseUrl = 'https://www.travel.taipei';

  // Date formatting
  // "2026-03-26 00:00:00 +08:00" → "2026/03/26"
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

  // Relative URL → Absolute URL
  // Handles three cases:
  // /image/xxx → https://www.travel.taipei/image/xxx
  // cdn.example.com → https://cdn.example.com
  // http(s)://... → Preserve as is
  static String _toAbsoluteUrl(String url) {
    final t = url.trim();
    if (t.isEmpty) return t;
    if (t.startsWith('http://') || t.startsWith('https://')) return t;
    if (t.startsWith('//')) return 'https:$t';
    if (t.startsWith('/')) return '$_siteBaseUrl$t';
    // Other relative paths (for insurance purposes)
    return '$_siteBaseUrl/$t';
  }

  // HTML preprocessing
  // Simultaneously correct the relative paths of <img src> and <a href>,
  // To prevent images from failing to display and links from becoming unclickable.
  static String _normalizeHtml(String html) {
    if (html.isEmpty) return html;
    // Correct src="..." or src='...'
    var result = html.replaceAllMapped(
      RegExp("\\bsrc=([\"'])([^\"']+)\\1", caseSensitive: false),
      (m) {
        final quote = m.group(1)!;
        final url = m.group(2)!;
        return 'src=$quote${_toAbsoluteUrl(url)}$quote';
      },
    );
    // Correct href="..." or href='...'
    result = result.replaceAllMapped(
      RegExp("\\bhref=([\"'])([^\"']+)\\1", caseSensitive: false),
      (m) {
        final quote = m.group(1)!;
        final url = m.group(2)!;
        if (url.startsWith('#') ||
            url.startsWith('mailto:') ||
            url.startsWith('tel:')) {
          return m.group(0)!;
        }
        return 'href=$quote${_toAbsoluteUrl(url)}$quote';
      },
    );
    return result;
  }

  @override
  Widget build(BuildContext context) {
    final beginStr = _formatDate(activity.begin);
    final endStr = _formatDate(activity.end);
    // Preprocess HTML, complete relative paths
    final normalizedDescription = _normalizeHtml(activity.description);
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
            // Activity Description (HTML Rendering)
            HtmlWidget(
              // Use preprocessed HTML
              normalizedDescription,
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

// Small widget: Information row (icon + label + value)
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

// Small components: Connect row
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
