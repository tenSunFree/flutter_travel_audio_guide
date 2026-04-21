import 'activity_model.dart';

class ActivityPageModel {
  const ActivityPageModel({
    required this.total,
    required this.page,
    required this.data,
  });

  final int total;
  final int page;
  final List<ActivityModel> data;

  factory ActivityPageModel.fromJson(Map<String, dynamic> json, int page) {
    final rawList = json['data'];
    final data = (rawList is List)
        ? rawList
              .whereType<Map<String, dynamic>>()
              .map(ActivityModel.fromJson)
              .toList()
        : <ActivityModel>[];
    return ActivityPageModel(
      total: json['total'] as int? ?? 0,
      page: page,
      data: data,
    );
  }
}
