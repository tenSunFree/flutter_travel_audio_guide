import 'package:dio/dio.dart';

import '../../../../core/error/exceptions.dart';
import '../models/attraction_page_model.dart';

class AttractionRemoteDataSource {
  const AttractionRemoteDataSource(this._dio);

  final Dio _dio;

  Future<AttractionPageModel> getAttractions({
    required String lang,
    required int page,
    String? categoryIds,
    double? nlat,
    double? elong,
  }) async {
    try {
      final query = <String, dynamic>{
        'page': page,
        if (categoryIds != null && categoryIds.isNotEmpty)
          'categoryIds': categoryIds,
        if (nlat != null) 'nlat': nlat,
        if (elong != null) 'elong': elong,
      };

      final response = await _dio.get<Map<String, dynamic>>(
        '/$lang/Attractions/All',
        queryParameters: query,
      );

      if (response.statusCode == 200 && response.data != null) {
        return AttractionPageModel.fromJson(response.data!, page);
      }

      if (response.statusCode == 204) {
        return AttractionPageModel(total: 0, page: page, data: const []);
      }

      throw ServerException('取得遊憩景點列表失敗：${response.statusCode}');
    } on DioException catch (e) {
      throw ServerException(e.message ?? '取得遊憩景點列表失敗');
    }
  }
}
