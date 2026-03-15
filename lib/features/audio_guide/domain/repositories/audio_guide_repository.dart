import '../entities/audio_guide.dart';
import '../entities/audio_guide_page.dart';

abstract class AudioGuideRepository {
  Future<AudioGuidePage> getAudioGuides({
    required String lang,
    required int page,
  });

  Future<String> downloadAudioGuide(AudioGuide guide);

  Future<bool> isGuideDownloaded(AudioGuide guide);
}
