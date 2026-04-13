import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_travel_audio_guide/app.dart';
import 'package:flutter_travel_audio_guide/features/audio_guide/di/audio_guide_providers.dart';
import 'package:flutter_travel_audio_guide/features/audio_guide/domain/repositories/audio_guide_repository.dart';
import 'package:flutter_travel_audio_guide/features/audio_guide/domain/usecases/download_audio_guide_usecase.dart';
import 'package:flutter_travel_audio_guide/features/audio_guide/domain/usecases/get_audio_guides_usecase.dart';

Widget buildTestApp(AudioGuideRepository repo) {
  return ProviderScope(
    overrides: [
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
