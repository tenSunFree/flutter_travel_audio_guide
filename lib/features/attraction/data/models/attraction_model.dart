import '../../domain/entities/attraction.dart';

/// Tag Model (shared by target / friendly)
class AttractionTagModel {
  const AttractionTagModel({required this.id, required this.name});

  final int id;
  final String name;

  factory AttractionTagModel.fromJson(Map<String, dynamic> json) {
    return AttractionTagModel(
      id: json['id'] as int? ?? 0,
      name: json['name'] as String? ?? '',
    );
  }

  AttractionTag toEntity() => AttractionTag(id: id, name: name);
}

/// Category Model
class AttractionCategoryModel {
  const AttractionCategoryModel({required this.id, required this.name});

  final int id;
  final String name;

  factory AttractionCategoryModel.fromJson(Map<String, dynamic> json) {
    return AttractionCategoryModel(
      id: json['id'] as int? ?? 0,
      name: json['name'] as String? ?? '',
    );
  }

  AttractionCategory toEntity() => AttractionCategory(id: id, name: name);
}

/// Image Model
class AttractionImageModel {
  const AttractionImageModel({
    required this.src,
    required this.subject,
    required this.ext,
  });

  final String src;
  final String subject;
  final String ext;

  factory AttractionImageModel.fromJson(Map<String, dynamic> json) {
    return AttractionImageModel(
      src: json['src'] as String? ?? '',
      subject: json['subject'] as String? ?? '',
      ext: json['ext'] as String? ?? '',
    );
  }

  AttractionImage toEntity() =>
      AttractionImage(src: src, subject: subject, ext: ext);
}

/// Attraction Model
class AttractionModel {
  const AttractionModel({
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
  final String distric;
  final String address;
  final String tel;
  final double? nlat;
  final double? elong;
  final String officialSite;
  final String facebook;
  final String ticket;
  final String remind;
  final String modified;
  final String url;
  final List<AttractionCategoryModel> categories; // API: category[]
  final List<AttractionTagModel> targets; // API: target[]
  final List<AttractionTagModel> friendlies; // API: friendly[]
  final List<AttractionImageModel> images;

  static double? _toDoubleOrNull(dynamic value) {
    if (value == null) return null;
    final d = value is num ? value.toDouble() : double.tryParse('$value');
    if (d == null || d <= 1.0) return null;
    return d;
  }

  factory AttractionModel.fromJson(Map<String, dynamic> json) {
    return AttractionModel(
      id: json['id'] as int? ?? 0,
      name: json['name'] as String? ?? '',
      introduction: json['introduction'] as String? ?? '',
      openTime: json['open_time'] as String? ?? '',
      distric: json['distric'] as String? ?? '',
      address: json['address'] as String? ?? '',
      tel: json['tel'] as String? ?? '',
      nlat: _toDoubleOrNull(json['nlat']),
      elong: _toDoubleOrNull(json['elong']),
      officialSite: json['official_site'] as String? ?? '',
      facebook: json['facebook'] as String? ?? '',
      ticket: json['ticket'] as String? ?? '',
      remind: json['remind'] as String? ?? '',
      modified: json['modified'] as String? ?? '',
      url: json['url'] as String? ?? '',
      categories: (json['category'] as List? ?? [])
          .whereType<Map<String, dynamic>>()
          .map(AttractionCategoryModel.fromJson)
          .toList(),
      targets: (json['target'] as List? ?? [])
          .whereType<Map<String, dynamic>>()
          .map(AttractionTagModel.fromJson)
          .toList(),
      friendlies: (json['friendly'] as List? ?? [])
          .whereType<Map<String, dynamic>>()
          .map(AttractionTagModel.fromJson)
          .toList(),
      images: (json['images'] as List? ?? [])
          .whereType<Map<String, dynamic>>()
          .map(AttractionImageModel.fromJson)
          .toList(),
    );
  }

  Attraction toEntity() {
    return Attraction(
      id: id,
      name: name,
      introduction: introduction,
      openTime: openTime,
      distric: distric,
      address: address,
      tel: tel,
      nlat: nlat,
      elong: elong,
      officialSite: officialSite,
      facebook: facebook,
      ticket: ticket,
      remind: remind,
      modified: modified,
      url: url,
      categories: categories.map((e) => e.toEntity()).toList(),
      targets: targets.map((e) => e.toEntity()).toList(),
      friendlies: friendlies.map((e) => e.toEntity()).toList(),
      images: images.map((e) => e.toEntity()).toList(),
    );
  }
}
