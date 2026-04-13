import 'package:flutter/material.dart';
import 'core/theme/app_theme.dart';
import 'features/audio_guide/presentation/pages/audio_guide_list_page.dart';

class TravelAudioGuideApp extends StatelessWidget {
  const TravelAudioGuideApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'FUNDAY',
      theme: AppTheme.light,
      home: const AudioGuideListPage(),
    );
  }
}
