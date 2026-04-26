import '../entities/attraction.dart';
import '../entities/attraction_page.dart';

abstract class AttractionRepository {
  Future<AttractionPage> getAttractions({
    required String lang,
    required int page,
    String? categoryIds,
    double? nlat,
    double? elong,
  });

  Future<List<AttractionCategory>> getAttractionCategories({
    required String lang,
  });
}
