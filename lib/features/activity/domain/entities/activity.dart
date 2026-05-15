import 'package:freezed_annotation/freezed_annotation.dart';

part 'activity.freezed.dart';

@freezed
abstract class Activity with _$Activity {
  const factory Activity({
    required int id,
    required String title,
    required String description,
    required String begin,
    required String end,
    required String posted,
    required String modified,
    required String url,
    required String address,
    required String distric,
    required String nlat,
    required String elong,
    required String organizer,
    required String coRganizer,
    required String contact,
    required String tel,
    required String ticket,
    required String traffic,
    required String parking,
    required List<ActivityLink> links,
  }) = _Activity;
}

@freezed
abstract class ActivityLink with _$ActivityLink {
  const factory ActivityLink({required String src, required String subject}) =
      _ActivityLink;
}
