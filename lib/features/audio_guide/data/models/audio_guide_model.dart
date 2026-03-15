import '../../domain/entities/audio_guide.dart';

class AudioGuideModel {
  const AudioGuideModel({
    required this.id,
    required this.title,
    required this.summary,
    required this.url,
    required this.fileExt,
    required this.modified,
  });

  final int id;
  final String title;
  final String? summary;
  final String url;
  final String? fileExt;
  final String modified;

  factory AudioGuideModel.fromJson(Map<String, dynamic> json) {
    return AudioGuideModel(
      id: json['id'] as int,
      title: json['title'] as String? ?? '',
      summary: json['summary'] as String?,
      url: json['url'] as String? ?? '',
      fileExt: json['file_ext'] as String?,
      modified: json['modified'] as String? ?? '',
    );
  }

  AudioGuide toEntity({
    required bool isDownloaded,
    required String? localFilePath,
  }) {
    return AudioGuide(
      id: id,
      title: title,
      summary: summary,
      url: url,
      fileExt: fileExt,
      modified: modified,
      isDownloaded: isDownloaded,
      localFilePath: localFilePath,
    );
  }
}
