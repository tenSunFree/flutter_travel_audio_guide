import 'audio_guide.dart';

class AudioGuidePage {
  const AudioGuidePage({
    required this.total,
    required this.page,
    required this.items,
    required this.hasMore,
  });

  final int total;
  final int page;
  final List<AudioGuide> items;
  final bool hasMore;
}
