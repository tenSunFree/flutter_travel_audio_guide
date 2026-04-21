class Activity {
  const Activity({
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

  // The original name of the API was distric (not district).
  final String distric;
  final String nlat;
  final String elong;
  final String organizer;

  // API original name co_rganizer
  final String coRganizer;
  final String contact;
  final String tel;
  final String ticket;
  final String traffic;
  final String parking;
  final List<ActivityLink> links;

  Activity copyWith({
    int? id,
    String? title,
    String? description,
    String? begin,
    String? end,
    String? posted,
    String? modified,
    String? url,
    String? address,
    String? distric,
    String? nlat,
    String? elong,
    String? organizer,
    String? coRganizer,
    String? contact,
    String? tel,
    String? ticket,
    String? traffic,
    String? parking,
    List<ActivityLink>? links,
  }) {
    return Activity(
      id: id ?? this.id,
      title: title ?? this.title,
      description: description ?? this.description,
      begin: begin ?? this.begin,
      end: end ?? this.end,
      posted: posted ?? this.posted,
      modified: modified ?? this.modified,
      url: url ?? this.url,
      address: address ?? this.address,
      distric: distric ?? this.distric,
      nlat: nlat ?? this.nlat,
      elong: elong ?? this.elong,
      organizer: organizer ?? this.organizer,
      coRganizer: coRganizer ?? this.coRganizer,
      contact: contact ?? this.contact,
      tel: tel ?? this.tel,
      ticket: ticket ?? this.ticket,
      traffic: traffic ?? this.traffic,
      parking: parking ?? this.parking,
      links: links ?? this.links,
    );
  }
}

class ActivityLink {
  const ActivityLink({required this.src, required this.subject});

  final String src;
  final String subject;
}
