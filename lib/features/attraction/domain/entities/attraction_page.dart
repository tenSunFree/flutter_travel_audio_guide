import 'package:freezed_annotation/freezed_annotation.dart';
import 'attraction.dart';

part 'attraction_page.freezed.dart';

@freezed
abstract class AttractionPage with _$AttractionPage {
  const factory AttractionPage({
    required int total,
    required int page,
    required List<Attraction> data,
  }) = _AttractionPage;
}
