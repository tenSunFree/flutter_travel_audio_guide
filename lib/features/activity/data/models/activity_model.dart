import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/activity.dart';

part 'activity_model.freezed.dart';

part 'activity_model.g.dart';

@freezed
abstract class ActivityLinkModel with _$ActivityLinkModel {
  const ActivityLinkModel._();

  const factory ActivityLinkModel({
    @Default('') String src,
    @Default('') String subject,
  }) = _ActivityLinkModel;

  factory ActivityLinkModel.fromJson(Map<String, dynamic> json) =>
      _$ActivityLinkModelFromJson(json);

  ActivityLink toEntity() => ActivityLink(src: src, subject: subject);
}

@freezed
abstract class ActivityModel with _$ActivityModel {
  const ActivityModel._();

  const factory ActivityModel({
    @Default(0) int id,
    @Default('') String title,
    @Default('') String description,
    @Default('') String begin,
    @Default('') String end,
    @Default('') String posted,
    @Default('') String modified,
    @Default('') String url,
    @Default('') String address,
    @Default('') String distric,
    @Default('') String nlat,
    @Default('') String elong,
    @Default('') String organizer,
    @JsonKey(name: 'co_rganizer') @Default('') String coRganizer,
    @Default('') String contact,
    @Default('') String tel,
    @Default('') String ticket,
    @Default('') String traffic,
    @Default('') String parking,
    @Default([]) List<ActivityLinkModel> links,
  }) = _ActivityModel;

  factory ActivityModel.fromJson(Map<String, dynamic> json) =>
      _activityModelFromJson(json);

  Activity toEntity() {
    return Activity(
      id: id,
      title: title,
      description: description,
      begin: begin,
      end: end,
      posted: posted,
      modified: modified,
      url: url,
      address: address,
      distric: distric,
      nlat: nlat,
      elong: elong,
      organizer: organizer,
      coRganizer: coRganizer,
      contact: contact,
      tel: tel,
      ticket: ticket,
      traffic: traffic,
      parking: parking,
      links: links.map((e) => e.toEntity()).toList(),
    );
  }
}

ActivityModel _activityModelFromJson(Map<String, dynamic> json) {
  final rawLinks = json['links'];
  final links = (rawLinks is List)
      ? rawLinks
            .whereType<Map<String, dynamic>>()
            .map(ActivityLinkModel.fromJson)
            .toList()
      : <ActivityLinkModel>[];
  return _$ActivityModelFromJson({...json, 'links': links});
}
