import 'package:flutter/material.dart';
import 'package:talker_flutter/talker_flutter.dart';
import 'app_logger.dart';

class AppLogPage extends StatelessWidget {
  const AppLogPage({super.key});

  @override
  Widget build(BuildContext context) {
    return TalkerScreen(talker: AppLogger.talker);
  }
}
