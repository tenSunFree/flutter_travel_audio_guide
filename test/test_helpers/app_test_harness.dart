import 'package:drift/native.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_travel_audio_guide/app.dart';
import 'package:flutter_travel_audio_guide/core/database/app_database.dart';
import 'package:flutter_travel_audio_guide/core/database/database_provider.dart';
import 'package:flutter_travel_audio_guide/core/sync/app_sync_service.dart';
import 'package:flutter_travel_audio_guide/core/sync/sync_providers.dart';
import 'package:flutter_travel_audio_guide/features/audio_guide/di/audio_guide_providers.dart';
import 'package:flutter_travel_audio_guide/features/audio_guide/domain/repositories/audio_guide_repository.dart';
import 'package:flutter_travel_audio_guide/features/audio_guide/domain/usecases/download_audio_guide_usecase.dart';
import 'package:flutter_travel_audio_guide/features/audio_guide/domain/usecases/get_audio_guides_usecase.dart';
import 'audio_guide_fakes.dart';

Widget buildTestApp(AudioGuideRepository repo) {
  return ProviderScope(
    overrides: [
      // The database is managed by Riverpod and is automatically closed upon disposal.
      appDatabaseProvider.overrideWith((ref) {
        final db = AppDatabase.forTesting(NativeDatabase.memory());
        ref.onDispose(db.close); // Riverpod only closes when disposes.
        return db;
      }),
      appSyncServiceProvider.overrideWith((ref) {
        final db = ref.watch(appDatabaseProvider);
        return AppSyncService(
          db: db,
          attractionRemote: FakeAttractionRemoteDataSource(),
          audioGuideRemote: FakeAudioGuideRemoteDataSource(),
          activityRemote: FakeActivityRemoteDataSource(),
        );
      }),
      getAudioGuidesUseCaseProvider.overrideWithValue(
        GetAudioGuidesUseCase(repo),
      ),
      downloadAudioGuideUseCaseProvider.overrideWithValue(
        DownloadAudioGuideUseCase(repo),
      ),
    ],
    child: const TravelAudioGuideApp(),
  );
}
