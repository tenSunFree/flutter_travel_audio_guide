import 'package:flutter_travel_audio_guide/features/audio_guide/domain/entities/audio_guide.dart';
import 'package:flutter_travel_audio_guide/features/audio_guide/domain/entities/audio_guide_page.dart';

AudioGuide buildAudioGuide(
  int id, {
  bool isDownloaded = false,
  String? localFilePath,
  String? title,
  String? summary,
}) {
  return AudioGuide(
    id: id,
    title: title ?? 'Guide $id',
    summary: summary ?? 'Summary $id',
    url: 'https://example.com/$id.mp3',
    fileExt: 'mp3',
    modified: '2026-03-29',
    isDownloaded: isDownloaded,
    localFilePath: localFilePath,
  );
}

AudioGuidePage buildAudioGuidePage({
  required List<AudioGuide> items,
  int page = 1,
  bool hasMore = false,
  int? total,
}) {
  return AudioGuidePage(
    total: total ?? items.length,
    page: page,
    hasMore: hasMore,
    items: items,
  );
}
