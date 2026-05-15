import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/audio_guide.dart';

part 'audio_guide_model.freezed.dart';

part 'audio_guide_model.g.dart';

@freezed
abstract class AudioGuideModel with _$AudioGuideModel {
  const AudioGuideModel._();

  const factory AudioGuideModel({
    required int id,
    @Default('') String title,
    String? summary,
    @Default('') String url,
    @JsonKey(name: 'file_ext') String? fileExt,
    @Default('') String modified,
  }) = _AudioGuideModel;

  factory AudioGuideModel.fromJson(Map<String, dynamic> json) =>
      _$AudioGuideModelFromJson(json);

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
