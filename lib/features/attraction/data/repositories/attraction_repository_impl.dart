import '../../domain/entities/attraction_page.dart';
import '../../domain/repositories/attraction_repository.dart';
import '../datasources/attraction_remote_data_source.dart';

class AttractionRepositoryImpl implements AttractionRepository {
  const AttractionRepositoryImpl(this._remoteDataSource);

  final AttractionRemoteDataSource _remoteDataSource;

  @override
  Future<AttractionPage> getAttractions({
    required String lang,
    required int page,
    String? categoryIds,
    double? nlat,
    double? elong,
  }) async {
    final model = await _remoteDataSource.getAttractions(
      lang: lang,
      page: page,
      categoryIds: categoryIds,
      nlat: nlat,
      elong: elong,
    );
    return model.toEntity();
  }
}
