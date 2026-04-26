import '../entities/attraction.dart';
import '../repositories/attraction_repository.dart';

class GetAttractionCategoriesUseCase {
  const GetAttractionCategoriesUseCase(this._repository);

  final AttractionRepository _repository;

  Future<List<AttractionCategory>> call({String lang = 'zh-tw'}) {
    return _repository.getAttractionCategories(lang: lang);
  }
}
