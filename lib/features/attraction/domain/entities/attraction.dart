class Attraction {
  const Attraction({
    required this.id,
    required this.name,
    required this.introduction,
    required this.openTime,
    required this.distric,
    required this.address,
    required this.tel,
    required this.nlat,
    required this.elong,
    required this.officialSite,
    required this.facebook,
    required this.ticket,
    required this.remind,
    required this.modified,
    required this.url,
    required this.categories,
    required this.images,
  });

  final int id;
  final String name;
  final String introduction;
  final String openTime;

  // The API field name itself is "distric" (not "district"), directly corresponding to
  final String distric;
  final String address;
  final String tel;

  // Some attractions in nlat/elong are 0; use nullable to let the outer layer determine this.
  final double? nlat;
  final double? elong;
  final String officialSite;
  final String facebook;
  final String ticket;
  final String remind;
  final String modified;
  final String url;
  final List<AttractionCategory> categories;
  final List<AttractionImage> images;

  // Convenience getters
  String get firstImageUrl => images.isNotEmpty ? images.first.src : '';

  bool get hasImage => firstImageUrl.isNotEmpty;

  /// Determine if coordinates are valid (Taiwan scope)
  bool get hasValidCoordinate =>
      nlat != null && elong != null && nlat! > 1.0 && elong! > 100.0;

  /// Category text, e.g., "Historical Buildings & Art Museums"
  String get categoryText {
    if (categories.isEmpty) return '';
    return categories.map((e) => e.name).join('・');
  }
}

class AttractionCategory {
  const AttractionCategory({required this.id, required this.name});

  final int id;
  final String name;
}

class AttractionImage {
  const AttractionImage({
    required this.src,
    required this.subject,
    required this.ext,
  });

  // This is already a complete URL, use it directly.
  final String src;
  final String subject;
  final String ext;
}
