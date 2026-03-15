import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../core/network/network_providers.dart';
import '../data/datasources/audio_guide_local_data_source.dart';
import '../data/datasources/audio_guide_remote_data_source.dart';
import '../data/repositories/audio_guide_repository_impl.dart';
import '../domain/repositories/audio_guide_repository.dart';
import '../domain/usecases/download_audio_guide_usecase.dart';
import '../domain/usecases/get_audio_guides_usecase.dart';

final audioGuideRemoteDataSourceProvider = Provider<AudioGuideRemoteDataSource>(
  (ref) => AudioGuideRemoteDataSource(ref.watch(dioProvider)),
);

final audioGuideLocalDataSourceProvider = Provider<AudioGuideLocalDataSource>(
  (ref) => const AudioGuideLocalDataSource(),
);

final audioGuideRepositoryProvider = Provider<AudioGuideRepository>((ref) {
  return AudioGuideRepositoryImpl(
    remoteDataSource: ref.watch(audioGuideRemoteDataSourceProvider),
    localDataSource: ref.watch(audioGuideLocalDataSourceProvider),
  );
});

final getAudioGuidesUseCaseProvider = Provider<GetAudioGuidesUseCase>((ref) {
  return GetAudioGuidesUseCase(ref.watch(audioGuideRepositoryProvider));
});

final downloadAudioGuideUseCaseProvider = Provider<DownloadAudioGuideUseCase>((
  ref,
) {
  return DownloadAudioGuideUseCase(ref.watch(audioGuideRepositoryProvider));
});
