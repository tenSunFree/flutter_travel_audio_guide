import '../entities/attraction_page.dart';
import '../repositories/attraction_repository.dart';

class GetAttractionsUseCase {
  const GetAttractionsUseCase(this._repository);

  final AttractionRepository _repository;

  Future<AttractionPage> call({
    String lang = 'zh-tw',
    required int page,
    String? categoryIds,
    double? nlat,
    double? elong,
  }) {
    return _repository.getAttractions(
      lang: lang,
      page: page,
      categoryIds: categoryIds,
      nlat: nlat,
      elong: elong,
    );
  }
}
