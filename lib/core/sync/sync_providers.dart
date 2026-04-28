import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../database/database_provider.dart';
import '../network/network_providers.dart';
import '../../features/attraction/data/datasources/attraction_remote_data_source.dart';
import '../../features/audio_guide/data/datasources/audio_guide_remote_data_source.dart';
import '../../features/activity/data/datasources/activity_remote_data_source.dart';
import 'app_sync_service.dart';

final appSyncServiceProvider = Provider<AppSyncService>((ref) {
  final db = ref.watch(appDatabaseProvider);
  final dio = ref.watch(dioProvider);
  return AppSyncService(
    db: db,
    attractionRemote: AttractionRemoteDataSource(dio),
    audioGuideRemote: AudioGuideRemoteDataSource(dio),
    activityRemote: ActivityRemoteDataSource(dio),
  );
});
