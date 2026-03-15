import '../entities/audio_guide.dart';
import '../repositories/audio_guide_repository.dart';

class DownloadAudioGuideUseCase {
  const DownloadAudioGuideUseCase(this._repository);

  final AudioGuideRepository _repository;

  Future<String> call(AudioGuide guide) {
    return _repository.downloadAudioGuide(guide);
  }
}
