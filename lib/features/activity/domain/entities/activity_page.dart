import 'package:freezed_annotation/freezed_annotation.dart';
import 'activity.dart';

part 'activity_page.freezed.dart';

@freezed
abstract class ActivityPage with _$ActivityPage {
  const factory ActivityPage({
    required int total,
    required int page,
    required List<Activity> items,
    required bool hasMore,
  }) = _ActivityPage;
}
