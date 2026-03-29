import 'package:flutter_travel_audio_guide/features/audio_guide/domain/entities/audio_guide.dart';
import 'package:flutter_travel_audio_guide/features/audio_guide/domain/entities/audio_guide_page.dart';
import 'package:flutter_travel_audio_guide/features/audio_guide/domain/repositories/audio_guide_repository.dart';

typedef GetAudioGuidesHandler =
    Future<AudioGuidePage> Function({required String lang, required int page});
typedef DownloadAudioGuideHandler = Future<String> Function(AudioGuide guide);
typedef IsGuideDownloadedHandler = Future<bool> Function(AudioGuide guide);

class FakeAudioGuideRepository implements AudioGuideRepository {
  FakeAudioGuideRepository({
    required GetAudioGuidesHandler onGet,
    DownloadAudioGuideHandler? onDownload,
    IsGuideDownloadedHandler? onIsDownloaded,
  }) : _onGet = onGet,
       _onDownload = onDownload ?? ((_) async => r'C:\audio\default.mp3'),
       _onIsDownloaded = onIsDownloaded ?? ((_) async => false);

  final GetAudioGuidesHandler _onGet;
  final DownloadAudioGuideHandler _onDownload;
  final IsGuideDownloadedHandler _onIsDownloaded;
  final List<int> requestedPages = <int>[];
  final List<String> requestedLangs = <String>[];

  @override
  Future<AudioGuidePage> getAudioGuides({
    required String lang,
    required int page,
  }) {
    requestedLangs.add(lang);
    requestedPages.add(page);
    return _onGet(lang: lang, page: page);
  }

  @override
  Future<String> downloadAudioGuide(AudioGuide guide) {
    return _onDownload(guide);
  }

  @override
  Future<bool> isGuideDownloaded(AudioGuide guide) {
    return _onIsDownloaded(guide);
  }
}
