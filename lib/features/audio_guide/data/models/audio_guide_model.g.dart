// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'audio_guide_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AudioGuideModel _$AudioGuideModelFromJson(Map<String, dynamic> json) =>
    _AudioGuideModel(
      id: (json['id'] as num).toInt(),
      title: json['title'] as String? ?? '',
      summary: json['summary'] as String?,
      url: json['url'] as String? ?? '',
      fileExt: json['file_ext'] as String?,
      modified: json['modified'] as String? ?? '',
    );

Map<String, dynamic> _$AudioGuideModelToJson(_AudioGuideModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'summary': instance.summary,
      'url': instance.url,
      'file_ext': instance.fileExt,
      'modified': instance.modified,
    };
