import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:sentry_flutter/sentry_flutter.dart';
import '../../features/activity/domain/entities/activity.dart';
import '../../features/activity/presentation/pages/activity_detail_page.dart';
import '../../features/attraction/domain/entities/attraction.dart';
import '../../features/attraction/presentation/pages/attraction_detail_page.dart';
import '../../features/audio_guide/domain/entities/audio_guide.dart';
import '../../features/audio_guide/presentation/pages/audio_guide_detail_page.dart';
import '../../features/home/presentation/pages/main_tab_page.dart';
import '../utils/app_log_page.dart';

// Route path constants
class AppRoutes {
  const AppRoutes._();

  static const home = '/';
  static const attractionDetail = '/attraction/detail';
  static const activityDetail = '/activity/detail';
  static const audioGuideDetail = '/audio-guide/detail';
  static const appLog = '/debug/log';
}

// Router
final appRouter = GoRouter(
  initialLocation: AppRoutes.home,
  debugLogDiagnostics: kDebugMode,
  observers: [
    // navigation breadcrumb + TTID
    SentryNavigatorObserver(),
  ],
  routes: [
    GoRoute(
      path: AppRoutes.home,
      builder: (context, state) => const MainTabPage(),
    ),
    GoRoute(
      path: AppRoutes.attractionDetail,
      builder: (context, state) {
        final attraction = state.extra;
        if (attraction is! Attraction) {
          return const _RouteErrorPage(message: '找不到景點詳細資料');
        }
        return AttractionDetailPage(attraction: attraction);
      },
    ),
    GoRoute(
      path: AppRoutes.activityDetail,
      builder: (context, state) {
        final activity = state.extra;
        if (activity is! Activity) {
          return const _RouteErrorPage(message: '找不到活動詳細資料');
        }
        return ActivityDetailPage(activity: activity);
      },
    ),
    GoRoute(
      path: AppRoutes.audioGuideDetail,
      builder: (context, state) {
        final guide = state.extra;
        if (guide is! AudioGuide) {
          return const _RouteErrorPage(message: '找不到語音導覽詳細資料');
        }
        return AudioGuideDetailPage(guide: guide);
      },
    ),
    GoRoute(
      path: AppRoutes.appLog,
      builder: (context, state) => const AppLogPage(),
    ),
  ],
  errorBuilder: (context, state) =>
      Scaffold(body: Center(child: Text('找不到頁面：${state.uri}'))),
);

class _RouteErrorPage extends StatelessWidget {
  const _RouteErrorPage({required this.message});

  final String message;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('資料錯誤')),
      body: Center(child: Text(message)),
    );
  }
}
