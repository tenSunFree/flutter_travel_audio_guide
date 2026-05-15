// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'attraction_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AttractionTagModel _$AttractionTagModelFromJson(Map<String, dynamic> json) =>
    _AttractionTagModel(
      id: (json['id'] as num?)?.toInt() ?? 0,
      name: json['name'] as String? ?? '',
    );

Map<String, dynamic> _$AttractionTagModelToJson(_AttractionTagModel instance) =>
    <String, dynamic>{'id': instance.id, 'name': instance.name};

_AttractionCategoryModel _$AttractionCategoryModelFromJson(
  Map<String, dynamic> json,
) => _AttractionCategoryModel(
  id: (json['id'] as num?)?.toInt() ?? 0,
  name: json['name'] as String? ?? '',
);

Map<String, dynamic> _$AttractionCategoryModelToJson(
  _AttractionCategoryModel instance,
) => <String, dynamic>{'id': instance.id, 'name': instance.name};

_AttractionImageModel _$AttractionImageModelFromJson(
  Map<String, dynamic> json,
) => _AttractionImageModel(
  src: json['src'] as String? ?? '',
  subject: json['subject'] as String? ?? '',
  ext: json['ext'] as String? ?? '',
);

Map<String, dynamic> _$AttractionImageModelToJson(
  _AttractionImageModel instance,
) => <String, dynamic>{
  'src': instance.src,
  'subject': instance.subject,
  'ext': instance.ext,
};

_AttractionModel _$AttractionModelFromJson(
  Map<String, dynamic> json,
) => _AttractionModel(
  id: (json['id'] as num?)?.toInt() ?? 0,
  name: json['name'] as String? ?? '',
  introduction: json['introduction'] as String? ?? '',
  openTime: json['open_time'] as String? ?? '',
  distric: json['distric'] as String? ?? '',
  address: json['address'] as String? ?? '',
  tel: json['tel'] as String? ?? '',
  nlat: (json['nlat'] as num?)?.toDouble(),
  elong: (json['elong'] as num?)?.toDouble(),
  officialSite: json['official_site'] as String? ?? '',
  facebook: json['facebook'] as String? ?? '',
  ticket: json['ticket'] as String? ?? '',
  remind: json['remind'] as String? ?? '',
  modified: json['modified'] as String? ?? '',
  url: json['url'] as String? ?? '',
  categories:
      (json['category'] as List<dynamic>?)
          ?.map(
            (e) => AttractionCategoryModel.fromJson(e as Map<String, dynamic>),
          )
          .toList() ??
      const [],
  targets:
      (json['target'] as List<dynamic>?)
          ?.map((e) => AttractionTagModel.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  friendlies:
      (json['friendly'] as List<dynamic>?)
          ?.map((e) => AttractionTagModel.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  images:
      (json['images'] as List<dynamic>?)
          ?.map((e) => AttractionImageModel.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
);

Map<String, dynamic> _$AttractionModelToJson(_AttractionModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'introduction': instance.introduction,
      'open_time': instance.openTime,
      'distric': instance.distric,
      'address': instance.address,
      'tel': instance.tel,
      'nlat': instance.nlat,
      'elong': instance.elong,
      'official_site': instance.officialSite,
      'facebook': instance.facebook,
      'ticket': instance.ticket,
      'remind': instance.remind,
      'modified': instance.modified,
      'url': instance.url,
      'category': instance.categories,
      'target': instance.targets,
      'friendly': instance.friendlies,
      'images': instance.images,
    };
