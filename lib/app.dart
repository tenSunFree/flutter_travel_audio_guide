import 'package:flutter/material.dart';
import 'core/theme/app_theme.dart';
import 'features/home/presentation/pages/main_tab_page.dart';

class TravelAudioGuideApp extends StatelessWidget {
  const TravelAudioGuideApp({super.key});

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