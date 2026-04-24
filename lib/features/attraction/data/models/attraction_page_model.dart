import '../../domain/entities/attraction_page.dart';
import 'attraction_model.dart';

class AttractionPageModel {
  const AttractionPageModel({
    required this.total,
    required this.page,
    required this.data,
  });

  final int total;
  final int page;
  final List<AttractionModel> data;

  factory AttractionPageModel.fromJson(Map<String, dynamic> json, int page) {
    return AttractionPageModel(
      total: json['total'] as int? ?? 0,
      page: page,
      data: (json['data'] as List? ?? [])
          .whereType<Map<String, dynamic>>()
          .map(AttractionModel.fromJson)
          .toList(),
    );
  }

  AttractionPage toEntity() {
    return AttractionPage(
      total: total,
      page: page,
      data: data.map((e) => e.toEntity()).toList(),
    );
  }
}
