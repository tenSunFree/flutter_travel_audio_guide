import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'core/router/app_router.dart';
import 'core/sync/sync_providers.dart';
import 'core/theme/app_theme.dart';

class TravelAudioGuideApp extends ConsumerStatefulWidget {
  const TravelAudioGuideApp({super.key});

  @override
  ConsumerState<TravelAudioGuideApp> createState() =>
      _TravelAudioGuideAppState();
}

class _TravelAudioGuideAppState extends ConsumerState<TravelAudioGuideApp> {
  @override
  void initState() {
    super.initState();
    Future.microtask(() => ref.read(appSyncServiceProvider).syncAllIfNeeded());
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: '語音導覽',
      theme: AppTheme.light,
      routerConfig: appRouter,
    );
  }
}
