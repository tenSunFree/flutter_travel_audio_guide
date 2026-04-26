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
    required this.targets,
    required this.friendlies,
    required this.images,
  });

  final int id;
  final String name;
  final String introduction;
  final String openTime;

  // The API field name itself is "distric" (not district).
  final String distric;
  final String address;
  final String tel;

  // For some attractions, nlat/elong is 0, so use nullable.
  final double? nlat;
  final double? elong;
  final String officialSite;
  final String facebook;
  final String ticket;
  final String remind;
  final String modified;
  final String url;

  final List<AttractionCategory> categories; // API: category[]
  final List<AttractionTag> targets; // Suitable groups
  final List<AttractionTag> friendlies; // Friendly facilities
  final List<AttractionImage> images;

  String get firstImageUrl => images.isNotEmpty ? images.first.src : '';

  bool get hasImage => firstImageUrl.isNotEmpty;

  bool get hasValidCoordinate =>
      nlat != null && elong != null && nlat! > 1.0 && elong! > 100.0;

  String get categoryText {
    if (categories.isEmpty) return '';
    return categories.map((e) => e.name).join('・');
  }

  /// Quickly determine if a specific friendly ID is present (for facility filtering)
  bool hasFriendly(int id) => friendlies.any((f) => f.id == id);

  /// Quickly determine if a target ID is present (for group filtering)
  bool hasTarget(int id) => targets.any((t) => t.id == id);
}

// Common tags (target / friendly share the same structure)
class AttractionTag {
  const AttractionTag({required this.id, required this.name});

  final int id;
  final String name;
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

  final String src;
  final String subject;
  final String ext;
}
