import 'activity.dart';

class ActivityPage {
  const ActivityPage({
    required this.total,
    required this.page,
    required this.items,
    required this.hasMore,
  });

  final int total;
  final int page;
  final List<Activity> items;
  final bool hasMore;
}
