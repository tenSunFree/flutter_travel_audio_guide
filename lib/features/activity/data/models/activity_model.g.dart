// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'activity_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ActivityLinkModel _$ActivityLinkModelFromJson(Map<String, dynamic> json) =>
    _ActivityLinkModel(
      src: json['src'] as String? ?? '',
      subject: json['subject'] as String? ?? '',
    );

Map<String, dynamic> _$ActivityLinkModelToJson(_ActivityLinkModel instance) =>
    <String, dynamic>{'src': instance.src, 'subject': instance.subject};

_ActivityModel _$ActivityModelFromJson(Map<String, dynamic> json) =>
    _ActivityModel(
      id: (json['id'] as num?)?.toInt() ?? 0,
      title: json['title'] as String? ?? '',
      description: json['description'] as String? ?? '',
      begin: json['begin'] as String? ?? '',
      end: json['end'] as String? ?? '',
      posted: json['posted'] as String? ?? '',
      modified: json['modified'] as String? ?? '',
      url: json['url'] as String? ?? '',
      address: json['address'] as String? ?? '',
      distric: json['distric'] as String? ?? '',
      nlat: json['nlat'] as String? ?? '',
      elong: json['elong'] as String? ?? '',
      organizer: json['organizer'] as String? ?? '',
      coRganizer: json['co_rganizer'] as String? ?? '',
      contact: json['contact'] as String? ?? '',
      tel: json['tel'] as String? ?? '',
      ticket: json['ticket'] as String? ?? '',
      traffic: json['traffic'] as String? ?? '',
      parking: json['parking'] as String? ?? '',
      links:
          (json['links'] as List<dynamic>?)
              ?.map(
                (e) => ActivityLinkModel.fromJson(e as Map<String, dynamic>),
              )
              .toList() ??
          const [],
    );

Map<String, dynamic> _$ActivityModelToJson(_ActivityModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'begin': instance.begin,
      'end': instance.end,
      'posted': instance.posted,
      'modified': instance.modified,
      'url': instance.url,
      'address': instance.address,
      'distric': instance.distric,
      'nlat': instance.nlat,
      'elong': instance.elong,
      'organizer': instance.organizer,
      'co_rganizer': instance.coRganizer,
      'contact': instance.contact,
      'tel': instance.tel,
      'ticket': instance.ticket,
      'traffic': instance.traffic,
      'parking': instance.parking,
      'links': instance.links,
    };
