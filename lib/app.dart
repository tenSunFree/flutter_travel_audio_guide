import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'core/sync/sync_providers.dart';
import 'core/theme/app_theme.dart';
import 'features/home/presentation/pages/main_tab_page.dart';

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
    // Background synchronization on startup, no waiting, no UI obstruction.
    Future.microtask(() => ref.read(appSyncServiceProvider).syncAllIfNeeded());
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: '語音導覽',
      theme: AppTheme.light,
      home: const MainTabPage(),
    );
  }
}
