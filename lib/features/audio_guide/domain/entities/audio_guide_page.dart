import 'package:freezed_annotation/freezed_annotation.dart';
import 'audio_guide.dart';

part 'audio_guide_page.freezed.dart';

@freezed
abstract class AudioGuidePage with _$AudioGuidePage {
  const factory AudioGuidePage({
    required int total,
    required int page,
    required List<AudioGuide> items,
    required bool hasMore,
  }) = _AudioGuidePage;
}
