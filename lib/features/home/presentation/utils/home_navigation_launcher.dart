import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeNavigationLauncher {
  const HomeNavigationLauncher._();

  /// Automatically select the best search method:
  /// - With name → Search by name (Google Maps will display business information, photos, and reviews)
  /// - With name + coordinates → Search by name and add coordinates to assist in location (more accurate)
  /// - Without name → Fallback using coordinates
  static Future<void> openBest(
    BuildContext context, {
    required String name,
    double? lat,
    double? lng,
  }) {
    if (name.isNotEmpty) {
      // Prioritize name: Google Maps will display business cards (photos, reviews, addresses)
      // If coordinates are also provided, add the `center` parameter to focus the map on the correct area.
      return _launchByName(context, name: name, lat: lat, lng: lng);
    }
    if (lat != null && lng != null) {
      // Fallback only if there is no name. Use coordinates.
      return _launchByLatLng(context, lat: lat, lng: lng);
    }
    // Neither of these should happen (or they should not happen).
    _showError(context);
    return Future.value();
  }

  // Internal
  static Future<void> _launchByName(
    BuildContext context, {
    required String name,
    double? lat,
    double? lng,
  }) {
    final q = Uri.encodeComponent(name);
    // Add "center" when coordinates are provided to focus search results on the vicinity of the attraction and avoid confusion with places of the same name.
    final center = (lat != null && lng != null) ? '&center=$lat,$lng' : '';
    final uri = Uri.parse(
      'https://www.google.com/maps/search/?api=1&query=$q$center',
    );
    return _launch(context, uri);
  }

  static Future<void> _launchByLatLng(
    BuildContext context, {
    required double lat,
    required double lng,
  }) {
    final uri = Uri.parse(
      'https://www.google.com/maps/search/?api=1&query=$lat,$lng',
    );
    return _launch(context, uri);
  }

  static Future<void> _launch(BuildContext context, Uri uri) async {
    final success = await launchUrl(uri, mode: LaunchMode.externalApplication);
    if (!context.mounted) return;
    if (!success) _showError(context);
  }

  static void _showError(BuildContext context) {
    ScaffoldMessenger.of(context)
      ..hideCurrentSnackBar()
      ..showSnackBar(const SnackBar(content: Text('無法開啟地圖導航')));
  }
}
