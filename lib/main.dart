import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:talker_riverpod_logger/talker_riverpod_logger.dart';
import 'app.dart';
import 'core/utils/app_logger.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  // Capture errors in the Flutter framework layer
  FlutterError.onError = (details) {
    AppLogger.talker.handle(details.exception, details.stack);
  };
  runApp(
    ProviderScope(
      observers: [TalkerRiverpodObserver(talker: AppLogger.talker)],
      child: const TravelAudioGuideApp(),
    ),
  );
}
