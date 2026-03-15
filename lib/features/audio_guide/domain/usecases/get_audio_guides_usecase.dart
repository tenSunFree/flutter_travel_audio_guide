import '../entities/audio_guide_page.dart';
import '../repositories/audio_guide_repository.dart';

class GetAudioGuidesUseCase {
  const GetAudioGuidesUseCase(this._repository);

  final AudioGuideRepository _repository;

  Future<AudioGuidePage> call({required String lang, required int page}) {
    return _repository.getAudioGuides(lang: lang, page: page);
  }
}
