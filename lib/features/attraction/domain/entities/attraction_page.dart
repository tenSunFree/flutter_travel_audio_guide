import 'attraction.dart';

class AttractionPage {
  const AttractionPage({
    required this.total,
    required this.page,
    required this.data,
  });

  final int total;
  final int page;
  final List<Attraction> data;
}
