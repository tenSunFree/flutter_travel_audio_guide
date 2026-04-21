import '../entities/activity_page.dart';

abstract class ActivityRepository {
  Future<ActivityPage> getActivities({
    required String lang,
    required int page,
    String? begin,
    String? end,
  });
}
