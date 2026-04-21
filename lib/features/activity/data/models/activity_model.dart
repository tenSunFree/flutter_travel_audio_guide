import '../../domain/entities/activity.dart';

class ActivityLinkModel {
  const ActivityLinkModel({required this.src, required this.subject});

  final String src;
  final String subject;

  factory ActivityLinkModel.fromJson(Map<String, dynamic> json) {
    return ActivityLinkModel(
      src: json['src'] as String? ?? '',
      subject: json['subject'] as String? ?? '',
    );
  }

  ActivityLink toEntity() => ActivityLink(src: src, subject: subject);
}

class ActivityModel {
  const ActivityModel({
    required this.id,
    required this.title,
    required this.description,
    required this.begin,
    required this.end,
    required this.posted,
    required this.modified,
    required this.url,
    required this.address,
    required this.distric,
    required this.nlat,
    required this.elong,
    required this.organizer,
    required this.coRganizer,
    required this.contact,
    required this.tel,
    required this.ticket,
    required this.traffic,
    required this.parking,
    required this.links,
  });

  final int id;
  final String title;
  final String description;
  final String begin;
  final String end;
  final String posted;
  final String modified;
  final String url;
  final String address;
  final String distric;
  final String nlat;
  final String elong;
  final String organizer;
  final String coRganizer;
  final String contact;
  final String tel;
  final String ticket;
  final String traffic;
  final String parking;
  final List<ActivityLinkModel> links;

  factory ActivityModel.fromJson(Map<String, dynamic> json) {
    // Links are sometimes null, sometimes empty [], use whereType to filter safely.
    final rawLinks = json['links'];
    final links = (rawLinks is List)
        ? rawLinks
              .whereType<Map<String, dynamic>>()
              .map(ActivityLinkModel.fromJson)
              .toList()
        : <ActivityLinkModel>[];
    return ActivityModel(
      id: json['id'] as int? ?? 0,
      title: json['title'] as String? ?? '',
      description: json['description'] as String? ?? '',
      begin: json['begin'] as String? ?? '',
      end: json['end'] as String? ?? '',
      posted: json['posted'] as String? ?? '',
      modified: json['modified'] as String? ?? '',
      url: json['url'] as String? ?? '',
      address: json['address'] as String? ?? '',
      distric: json['distric'] as String? ?? '',
      // API original name distric
      nlat: json['nlat'] as String? ?? '',
      elong: json['elong'] as String? ?? '',
      organizer: json['organizer'] as String? ?? '',
      coRganizer: json['co_rganizer'] as String? ?? '',
      // API original name co_rganizer
      contact: json['contact'] as String? ?? '',
      tel: json['tel'] as String? ?? '',
      ticket: json['ticket'] as String? ?? '',
      traffic: json['traffic'] as String? ?? '',
      parking: json['parking'] as String? ?? '',
      links: links,
    );
  }

  Activity toEntity() {
    return Activity(
      id: id,
      title: title,
      description: description,
      begin: begin,
      end: end,
      posted: posted,
      modified: modified,
      url: url,
      address: address,
      distric: distric,
      nlat: nlat,
      elong: elong,
      organizer: organizer,
      coRganizer: coRganizer,
      contact: contact,
      tel: tel,
      ticket: ticket,
      traffic: traffic,
      parking: parking,
      links: links.map((e) => e.toEntity()).toList(),
    );
  }
}
