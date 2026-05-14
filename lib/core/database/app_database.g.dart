// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_database.dart';

// ignore_for_file: type=lint
class $AttractionTableTable extends AttractionTable
    with TableInfo<$AttractionTableTable, AttractionTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $AttractionTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
    'name',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _introductionMeta = const VerificationMeta(
    'introduction',
  );
  @override
  late final GeneratedColumn<String> introduction = GeneratedColumn<String>(
    'introduction',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _openTimeMeta = const VerificationMeta(
    'openTime',
  );
  @override
  late final GeneratedColumn<String> openTime = GeneratedColumn<String>(
    'open_time',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _districMeta = const VerificationMeta(
    'distric',
  );
  @override
  late final GeneratedColumn<String> distric = GeneratedColumn<String>(
    'distric',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _addressMeta = const VerificationMeta(
    'address',
  );
  @override
  late final GeneratedColumn<String> address = GeneratedColumn<String>(
    'address',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _telMeta = const VerificationMeta('tel');
  @override
  late final GeneratedColumn<String> tel = GeneratedColumn<String>(
    'tel',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _officialSiteMeta = const VerificationMeta(
    'officialSite',
  );
  @override
  late final GeneratedColumn<String> officialSite = GeneratedColumn<String>(
    'official_site',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _facebookMeta = const VerificationMeta(
    'facebook',
  );
  @override
  late final GeneratedColumn<String> facebook = GeneratedColumn<String>(
    'facebook',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _ticketMeta = const VerificationMeta('ticket');
  @override
  late final GeneratedColumn<String> ticket = GeneratedColumn<String>(
    'ticket',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _remindMeta = const VerificationMeta('remind');
  @override
  late final GeneratedColumn<String> remind = GeneratedColumn<String>(
    'remind',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _urlMeta = const VerificationMeta('url');
  @override
  late final GeneratedColumn<String> url = GeneratedColumn<String>(
    'url',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _modifiedMeta = const VerificationMeta(
    'modified',
  );
  @override
  late final GeneratedColumn<String> modified = GeneratedColumn<String>(
    'modified',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _nlatMeta = const VerificationMeta('nlat');
  @override
  late final GeneratedColumn<double> nlat = GeneratedColumn<double>(
    'nlat',
    aliasedName,
    true,
    type: DriftSqlType.double,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _elongMeta = const VerificationMeta('elong');
  @override
  late final GeneratedColumn<double> elong = GeneratedColumn<double>(
    'elong',
    aliasedName,
    true,
    type: DriftSqlType.double,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _categoriesJsonMeta = const VerificationMeta(
    'categoriesJson',
  );
  @override
  late final GeneratedColumn<String> categoriesJson = GeneratedColumn<String>(
    'categories_json',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    defaultValue: const Constant('[]'),
  );
  static const VerificationMeta _imagesJsonMeta = const VerificationMeta(
    'imagesJson',
  );
  @override
  late final GeneratedColumn<String> imagesJson = GeneratedColumn<String>(
    'images_json',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    defaultValue: const Constant('[]'),
  );
  static const VerificationMeta _friendliesJsonMeta = const VerificationMeta(
    'friendliesJson',
  );
  @override
  late final GeneratedColumn<String> friendliesJson = GeneratedColumn<String>(
    'friendlies_json',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    defaultValue: const Constant('[]'),
  );
  static const VerificationMeta _cachedAtMeta = const VerificationMeta(
    'cachedAt',
  );
  @override
  late final GeneratedColumn<DateTime> cachedAt = GeneratedColumn<DateTime>(
    'cached_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    name,
    introduction,
    openTime,
    distric,
    address,
    tel,
    officialSite,
    facebook,
    ticket,
    remind,
    url,
    modified,
    nlat,
    elong,
    categoriesJson,
    imagesJson,
    friendliesJson,
    cachedAt,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'attraction_table';
  @override
  VerificationContext validateIntegrity(
    Insertable<AttractionTableData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
        _nameMeta,
        name.isAcceptableOrUnknown(data['name']!, _nameMeta),
      );
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('introduction')) {
      context.handle(
        _introductionMeta,
        introduction.isAcceptableOrUnknown(
          data['introduction']!,
          _introductionMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_introductionMeta);
    }
    if (data.containsKey('open_time')) {
      context.handle(
        _openTimeMeta,
        openTime.isAcceptableOrUnknown(data['open_time']!, _openTimeMeta),
      );
    } else if (isInserting) {
      context.missing(_openTimeMeta);
    }
    if (data.containsKey('distric')) {
      context.handle(
        _districMeta,
        distric.isAcceptableOrUnknown(data['distric']!, _districMeta),
      );
    } else if (isInserting) {
      context.missing(_districMeta);
    }
    if (data.containsKey('address')) {
      context.handle(
        _addressMeta,
        address.isAcceptableOrUnknown(data['address']!, _addressMeta),
      );
    } else if (isInserting) {
      context.missing(_addressMeta);
    }
    if (data.containsKey('tel')) {
      context.handle(
        _telMeta,
        tel.isAcceptableOrUnknown(data['tel']!, _telMeta),
      );
    } else if (isInserting) {
      context.missing(_telMeta);
    }
    if (data.containsKey('official_site')) {
      context.handle(
        _officialSiteMeta,
        officialSite.isAcceptableOrUnknown(
          data['official_site']!,
          _officialSiteMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_officialSiteMeta);
    }
    if (data.containsKey('facebook')) {
      context.handle(
        _facebookMeta,
        facebook.isAcceptableOrUnknown(data['facebook']!, _facebookMeta),
      );
    } else if (isInserting) {
      context.missing(_facebookMeta);
    }
    if (data.containsKey('ticket')) {
      context.handle(
        _ticketMeta,
        ticket.isAcceptableOrUnknown(data['ticket']!, _ticketMeta),
      );
    } else if (isInserting) {
      context.missing(_ticketMeta);
    }
    if (data.containsKey('remind')) {
      context.handle(
        _remindMeta,
        remind.isAcceptableOrUnknown(data['remind']!, _remindMeta),
      );
    } else if (isInserting) {
      context.missing(_remindMeta);
    }
    if (data.containsKey('url')) {
      context.handle(
        _urlMeta,
        url.isAcceptableOrUnknown(data['url']!, _urlMeta),
      );
    } else if (isInserting) {
      context.missing(_urlMeta);
    }
    if (data.containsKey('modified')) {
      context.handle(
        _modifiedMeta,
        modified.isAcceptableOrUnknown(data['modified']!, _modifiedMeta),
      );
    } else if (isInserting) {
      context.missing(_modifiedMeta);
    }
    if (data.containsKey('nlat')) {
      context.handle(
        _nlatMeta,
        nlat.isAcceptableOrUnknown(data['nlat']!, _nlatMeta),
      );
    }
    if (data.containsKey('elong')) {
      context.handle(
        _elongMeta,
        elong.isAcceptableOrUnknown(data['elong']!, _elongMeta),
      );
    }
    if (data.containsKey('categories_json')) {
      context.handle(
        _categoriesJsonMeta,
        categoriesJson.isAcceptableOrUnknown(
          data['categories_json']!,
          _categoriesJsonMeta,
        ),
      );
    }
    if (data.containsKey('images_json')) {
      context.handle(
        _imagesJsonMeta,
        imagesJson.isAcceptableOrUnknown(data['images_json']!, _imagesJsonMeta),
      );
    }
    if (data.containsKey('friendlies_json')) {
      context.handle(
        _friendliesJsonMeta,
        friendliesJson.isAcceptableOrUnknown(
          data['friendlies_json']!,
          _friendliesJsonMeta,
        ),
      );
    }
    if (data.containsKey('cached_at')) {
      context.handle(
        _cachedAtMeta,
        cachedAt.isAcceptableOrUnknown(data['cached_at']!, _cachedAtMeta),
      );
    } else if (isInserting) {
      context.missing(_cachedAtMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  AttractionTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return AttractionTableData(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      name: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}name'],
      )!,
      introduction: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}introduction'],
      )!,
      openTime: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}open_time'],
      )!,
      distric: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}distric'],
      )!,
      address: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}address'],
      )!,
      tel: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}tel'],
      )!,
      officialSite: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}official_site'],
      )!,
      facebook: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}facebook'],
      )!,
      ticket: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}ticket'],
      )!,
      remind: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}remind'],
      )!,
      url: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}url'],
      )!,
      modified: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}modified'],
      )!,
      nlat: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}nlat'],
      ),
      elong: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}elong'],
      ),
      categoriesJson: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}categories_json'],
      )!,
      imagesJson: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}images_json'],
      )!,
      friendliesJson: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}friendlies_json'],
      )!,
      cachedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}cached_at'],
      )!,
    );
  }

  @override
  $AttractionTableTable createAlias(String alias) {
    return $AttractionTableTable(attachedDatabase, alias);
  }
}

class AttractionTableData extends DataClass
    implements Insertable<AttractionTableData> {
  final int id;
  final String name;
  final String introduction;
  final String openTime;
  final String distric;
  final String address;
  final String tel;
  final String officialSite;
  final String facebook;
  final String ticket;
  final String remind;
  final String url;
  final String modified;
  final double? nlat;
  final double? elong;
  final String categoriesJson;
  final String imagesJson;
  final String friendliesJson;
  final DateTime cachedAt;
  const AttractionTableData({
    required this.id,
    required this.name,
    required this.introduction,
    required this.openTime,
    required this.distric,
    required this.address,
    required this.tel,
    required this.officialSite,
    required this.facebook,
    required this.ticket,
    required this.remind,
    required this.url,
    required this.modified,
    this.nlat,
    this.elong,
    required this.categoriesJson,
    required this.imagesJson,
    required this.friendliesJson,
    required this.cachedAt,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['name'] = Variable<String>(name);
    map['introduction'] = Variable<String>(introduction);
    map['open_time'] = Variable<String>(openTime);
    map['distric'] = Variable<String>(distric);
    map['address'] = Variable<String>(address);
    map['tel'] = Variable<String>(tel);
    map['official_site'] = Variable<String>(officialSite);
    map['facebook'] = Variable<String>(facebook);
    map['ticket'] = Variable<String>(ticket);
    map['remind'] = Variable<String>(remind);
    map['url'] = Variable<String>(url);
    map['modified'] = Variable<String>(modified);
    if (!nullToAbsent || nlat != null) {
      map['nlat'] = Variable<double>(nlat);
    }
    if (!nullToAbsent || elong != null) {
      map['elong'] = Variable<double>(elong);
    }
    map['categories_json'] = Variable<String>(categoriesJson);
    map['images_json'] = Variable<String>(imagesJson);
    map['friendlies_json'] = Variable<String>(friendliesJson);
    map['cached_at'] = Variable<DateTime>(cachedAt);
    return map;
  }

  AttractionTableCompanion toCompanion(bool nullToAbsent) {
    return AttractionTableCompanion(
      id: Value(id),
      name: Value(name),
      introduction: Value(introduction),
      openTime: Value(openTime),
      distric: Value(distric),
      address: Value(address),
      tel: Value(tel),
      officialSite: Value(officialSite),
      facebook: Value(facebook),
      ticket: Value(ticket),
      remind: Value(remind),
      url: Value(url),
      modified: Value(modified),
      nlat: nlat == null && nullToAbsent ? const Value.absent() : Value(nlat),
      elong: elong == null && nullToAbsent
          ? const Value.absent()
          : Value(elong),
      categoriesJson: Value(categoriesJson),
      imagesJson: Value(imagesJson),
      friendliesJson: Value(friendliesJson),
      cachedAt: Value(cachedAt),
    );
  }

  factory AttractionTableData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return AttractionTableData(
      id: serializer.fromJson<int>(json['id']),
      name: serializer.fromJson<String>(json['name']),
      introduction: serializer.fromJson<String>(json['introduction']),
      openTime: serializer.fromJson<String>(json['openTime']),
      distric: serializer.fromJson<String>(json['distric']),
      address: serializer.fromJson<String>(json['address']),
      tel: serializer.fromJson<String>(json['tel']),
      officialSite: serializer.fromJson<String>(json['officialSite']),
      facebook: serializer.fromJson<String>(json['facebook']),
      ticket: serializer.fromJson<String>(json['ticket']),
      remind: serializer.fromJson<String>(json['remind']),
      url: serializer.fromJson<String>(json['url']),
      modified: serializer.fromJson<String>(json['modified']),
      nlat: serializer.fromJson<double?>(json['nlat']),
      elong: serializer.fromJson<double?>(json['elong']),
      categoriesJson: serializer.fromJson<String>(json['categoriesJson']),
      imagesJson: serializer.fromJson<String>(json['imagesJson']),
      friendliesJson: serializer.fromJson<String>(json['friendliesJson']),
      cachedAt: serializer.fromJson<DateTime>(json['cachedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'name': serializer.toJson<String>(name),
      'introduction': serializer.toJson<String>(introduction),
      'openTime': serializer.toJson<String>(openTime),
      'distric': serializer.toJson<String>(distric),
      'address': serializer.toJson<String>(address),
      'tel': serializer.toJson<String>(tel),
      'officialSite': serializer.toJson<String>(officialSite),
      'facebook': serializer.toJson<String>(facebook),
      'ticket': serializer.toJson<String>(ticket),
      'remind': serializer.toJson<String>(remind),
      'url': serializer.toJson<String>(url),
      'modified': serializer.toJson<String>(modified),
      'nlat': serializer.toJson<double?>(nlat),
      'elong': serializer.toJson<double?>(elong),
      'categoriesJson': serializer.toJson<String>(categoriesJson),
      'imagesJson': serializer.toJson<String>(imagesJson),
      'friendliesJson': serializer.toJson<String>(friendliesJson),
      'cachedAt': serializer.toJson<DateTime>(cachedAt),
    };
  }

  AttractionTableData copyWith({
    int? id,
    String? name,
    String? introduction,
    String? openTime,
    String? distric,
    String? address,
    String? tel,
    String? officialSite,
    String? facebook,
    String? ticket,
    String? remind,
    String? url,
    String? modified,
    Value<double?> nlat = const Value.absent(),
    Value<double?> elong = const Value.absent(),
    String? categoriesJson,
    String? imagesJson,
    String? friendliesJson,
    DateTime? cachedAt,
  }) => AttractionTableData(
    id: id ?? this.id,
    name: name ?? this.name,
    introduction: introduction ?? this.introduction,
    openTime: openTime ?? this.openTime,
    distric: distric ?? this.distric,
    address: address ?? this.address,
    tel: tel ?? this.tel,
    officialSite: officialSite ?? this.officialSite,
    facebook: facebook ?? this.facebook,
    ticket: ticket ?? this.ticket,
    remind: remind ?? this.remind,
    url: url ?? this.url,
    modified: modified ?? this.modified,
    nlat: nlat.present ? nlat.value : this.nlat,
    elong: elong.present ? elong.value : this.elong,
    categoriesJson: categoriesJson ?? this.categoriesJson,
    imagesJson: imagesJson ?? this.imagesJson,
    friendliesJson: friendliesJson ?? this.friendliesJson,
    cachedAt: cachedAt ?? this.cachedAt,
  );
  AttractionTableData copyWithCompanion(AttractionTableCompanion data) {
    return AttractionTableData(
      id: data.id.present ? data.id.value : this.id,
      name: data.name.present ? data.name.value : this.name,
      introduction: data.introduction.present
          ? data.introduction.value
          : this.introduction,
      openTime: data.openTime.present ? data.openTime.value : this.openTime,
      distric: data.distric.present ? data.distric.value : this.distric,
      address: data.address.present ? data.address.value : this.address,
      tel: data.tel.present ? data.tel.value : this.tel,
      officialSite: data.officialSite.present
          ? data.officialSite.value
          : this.officialSite,
      facebook: data.facebook.present ? data.facebook.value : this.facebook,
      ticket: data.ticket.present ? data.ticket.value : this.ticket,
      remind: data.remind.present ? data.remind.value : this.remind,
      url: data.url.present ? data.url.value : this.url,
      modified: data.modified.present ? data.modified.value : this.modified,
      nlat: data.nlat.present ? data.nlat.value : this.nlat,
      elong: data.elong.present ? data.elong.value : this.elong,
      categoriesJson: data.categoriesJson.present
          ? data.categoriesJson.value
          : this.categoriesJson,
      imagesJson: data.imagesJson.present
          ? data.imagesJson.value
          : this.imagesJson,
      friendliesJson: data.friendliesJson.present
          ? data.friendliesJson.value
          : this.friendliesJson,
      cachedAt: data.cachedAt.present ? data.cachedAt.value : this.cachedAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('AttractionTableData(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('introduction: $introduction, ')
          ..write('openTime: $openTime, ')
          ..write('distric: $distric, ')
          ..write('address: $address, ')
          ..write('tel: $tel, ')
          ..write('officialSite: $officialSite, ')
          ..write('facebook: $facebook, ')
          ..write('ticket: $ticket, ')
          ..write('remind: $remind, ')
          ..write('url: $url, ')
          ..write('modified: $modified, ')
          ..write('nlat: $nlat, ')
          ..write('elong: $elong, ')
          ..write('categoriesJson: $categoriesJson, ')
          ..write('imagesJson: $imagesJson, ')
          ..write('friendliesJson: $friendliesJson, ')
          ..write('cachedAt: $cachedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    name,
    introduction,
    openTime,
    distric,
    address,
    tel,
    officialSite,
    facebook,
    ticket,
    remind,
    url,
    modified,
    nlat,
    elong,
    categoriesJson,
    imagesJson,
    friendliesJson,
    cachedAt,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is AttractionTableData &&
          other.id == this.id &&
          other.name == this.name &&
          other.introduction == this.introduction &&
          other.openTime == this.openTime &&
          other.distric == this.distric &&
          other.address == this.address &&
          other.tel == this.tel &&
          other.officialSite == this.officialSite &&
          other.facebook == this.facebook &&
          other.ticket == this.ticket &&
          other.remind == this.remind &&
          other.url == this.url &&
          other.modified == this.modified &&
          other.nlat == this.nlat &&
          other.elong == this.elong &&
          other.categoriesJson == this.categoriesJson &&
          other.imagesJson == this.imagesJson &&
          other.friendliesJson == this.friendliesJson &&
          other.cachedAt == this.cachedAt);
}

class AttractionTableCompanion extends UpdateCompanion<AttractionTableData> {
  final Value<int> id;
  final Value<String> name;
  final Value<String> introduction;
  final Value<String> openTime;
  final Value<String> distric;
  final Value<String> address;
  final Value<String> tel;
  final Value<String> officialSite;
  final Value<String> facebook;
  final Value<String> ticket;
  final Value<String> remind;
  final Value<String> url;
  final Value<String> modified;
  final Value<double?> nlat;
  final Value<double?> elong;
  final Value<String> categoriesJson;
  final Value<String> imagesJson;
  final Value<String> friendliesJson;
  final Value<DateTime> cachedAt;
  const AttractionTableCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.introduction = const Value.absent(),
    this.openTime = const Value.absent(),
    this.distric = const Value.absent(),
    this.address = const Value.absent(),
    this.tel = const Value.absent(),
    this.officialSite = const Value.absent(),
    this.facebook = const Value.absent(),
    this.ticket = const Value.absent(),
    this.remind = const Value.absent(),
    this.url = const Value.absent(),
    this.modified = const Value.absent(),
    this.nlat = const Value.absent(),
    this.elong = const Value.absent(),
    this.categoriesJson = const Value.absent(),
    this.imagesJson = const Value.absent(),
    this.friendliesJson = const Value.absent(),
    this.cachedAt = const Value.absent(),
  });
  AttractionTableCompanion.insert({
    this.id = const Value.absent(),
    required String name,
    required String introduction,
    required String openTime,
    required String distric,
    required String address,
    required String tel,
    required String officialSite,
    required String facebook,
    required String ticket,
    required String remind,
    required String url,
    required String modified,
    this.nlat = const Value.absent(),
    this.elong = const Value.absent(),
    this.categoriesJson = const Value.absent(),
    this.imagesJson = const Value.absent(),
    this.friendliesJson = const Value.absent(),
    required DateTime cachedAt,
  }) : name = Value(name),
       introduction = Value(introduction),
       openTime = Value(openTime),
       distric = Value(distric),
       address = Value(address),
       tel = Value(tel),
       officialSite = Value(officialSite),
       facebook = Value(facebook),
       ticket = Value(ticket),
       remind = Value(remind),
       url = Value(url),
       modified = Value(modified),
       cachedAt = Value(cachedAt);
  static Insertable<AttractionTableData> custom({
    Expression<int>? id,
    Expression<String>? name,
    Expression<String>? introduction,
    Expression<String>? openTime,
    Expression<String>? distric,
    Expression<String>? address,
    Expression<String>? tel,
    Expression<String>? officialSite,
    Expression<String>? facebook,
    Expression<String>? ticket,
    Expression<String>? remind,
    Expression<String>? url,
    Expression<String>? modified,
    Expression<double>? nlat,
    Expression<double>? elong,
    Expression<String>? categoriesJson,
    Expression<String>? imagesJson,
    Expression<String>? friendliesJson,
    Expression<DateTime>? cachedAt,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (introduction != null) 'introduction': introduction,
      if (openTime != null) 'open_time': openTime,
      if (distric != null) 'distric': distric,
      if (address != null) 'address': address,
      if (tel != null) 'tel': tel,
      if (officialSite != null) 'official_site': officialSite,
      if (facebook != null) 'facebook': facebook,
      if (ticket != null) 'ticket': ticket,
      if (remind != null) 'remind': remind,
      if (url != null) 'url': url,
      if (modified != null) 'modified': modified,
      if (nlat != null) 'nlat': nlat,
      if (elong != null) 'elong': elong,
      if (categoriesJson != null) 'categories_json': categoriesJson,
      if (imagesJson != null) 'images_json': imagesJson,
      if (friendliesJson != null) 'friendlies_json': friendliesJson,
      if (cachedAt != null) 'cached_at': cachedAt,
    });
  }

  AttractionTableCompanion copyWith({
    Value<int>? id,
    Value<String>? name,
    Value<String>? introduction,
    Value<String>? openTime,
    Value<String>? distric,
    Value<String>? address,
    Value<String>? tel,
    Value<String>? officialSite,
    Value<String>? facebook,
    Value<String>? ticket,
    Value<String>? remind,
    Value<String>? url,
    Value<String>? modified,
    Value<double?>? nlat,
    Value<double?>? elong,
    Value<String>? categoriesJson,
    Value<String>? imagesJson,
    Value<String>? friendliesJson,
    Value<DateTime>? cachedAt,
  }) {
    return AttractionTableCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      introduction: introduction ?? this.introduction,
      openTime: openTime ?? this.openTime,
      distric: distric ?? this.distric,
      address: address ?? this.address,
      tel: tel ?? this.tel,
      officialSite: officialSite ?? this.officialSite,
      facebook: facebook ?? this.facebook,
      ticket: ticket ?? this.ticket,
      remind: remind ?? this.remind,
      url: url ?? this.url,
      modified: modified ?? this.modified,
      nlat: nlat ?? this.nlat,
      elong: elong ?? this.elong,
      categoriesJson: categoriesJson ?? this.categoriesJson,
      imagesJson: imagesJson ?? this.imagesJson,
      friendliesJson: friendliesJson ?? this.friendliesJson,
      cachedAt: cachedAt ?? this.cachedAt,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (introduction.present) {
      map['introduction'] = Variable<String>(introduction.value);
    }
    if (openTime.present) {
      map['open_time'] = Variable<String>(openTime.value);
    }
    if (distric.present) {
      map['distric'] = Variable<String>(distric.value);
    }
    if (address.present) {
      map['address'] = Variable<String>(address.value);
    }
    if (tel.present) {
      map['tel'] = Variable<String>(tel.value);
    }
    if (officialSite.present) {
      map['official_site'] = Variable<String>(officialSite.value);
    }
    if (facebook.present) {
      map['facebook'] = Variable<String>(facebook.value);
    }
    if (ticket.present) {
      map['ticket'] = Variable<String>(ticket.value);
    }
    if (remind.present) {
      map['remind'] = Variable<String>(remind.value);
    }
    if (url.present) {
      map['url'] = Variable<String>(url.value);
    }
    if (modified.present) {
      map['modified'] = Variable<String>(modified.value);
    }
    if (nlat.present) {
      map['nlat'] = Variable<double>(nlat.value);
    }
    if (elong.present) {
      map['elong'] = Variable<double>(elong.value);
    }
    if (categoriesJson.present) {
      map['categories_json'] = Variable<String>(categoriesJson.value);
    }
    if (imagesJson.present) {
      map['images_json'] = Variable<String>(imagesJson.value);
    }
    if (friendliesJson.present) {
      map['friendlies_json'] = Variable<String>(friendliesJson.value);
    }
    if (cachedAt.present) {
      map['cached_at'] = Variable<DateTime>(cachedAt.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('AttractionTableCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('introduction: $introduction, ')
          ..write('openTime: $openTime, ')
          ..write('distric: $distric, ')
          ..write('address: $address, ')
          ..write('tel: $tel, ')
          ..write('officialSite: $officialSite, ')
          ..write('facebook: $facebook, ')
          ..write('ticket: $ticket, ')
          ..write('remind: $remind, ')
          ..write('url: $url, ')
          ..write('modified: $modified, ')
          ..write('nlat: $nlat, ')
          ..write('elong: $elong, ')
          ..write('categoriesJson: $categoriesJson, ')
          ..write('imagesJson: $imagesJson, ')
          ..write('friendliesJson: $friendliesJson, ')
          ..write('cachedAt: $cachedAt')
          ..write(')'))
        .toString();
  }
}

class $AudioGuideTableTable extends AudioGuideTable
    with TableInfo<$AudioGuideTableTable, AudioGuideTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $AudioGuideTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _titleMeta = const VerificationMeta('title');
  @override
  late final GeneratedColumn<String> title = GeneratedColumn<String>(
    'title',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _urlMeta = const VerificationMeta('url');
  @override
  late final GeneratedColumn<String> url = GeneratedColumn<String>(
    'url',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _modifiedMeta = const VerificationMeta(
    'modified',
  );
  @override
  late final GeneratedColumn<String> modified = GeneratedColumn<String>(
    'modified',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _summaryMeta = const VerificationMeta(
    'summary',
  );
  @override
  late final GeneratedColumn<String> summary = GeneratedColumn<String>(
    'summary',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _fileExtMeta = const VerificationMeta(
    'fileExt',
  );
  @override
  late final GeneratedColumn<String> fileExt = GeneratedColumn<String>(
    'file_ext',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _matchedAttractionIdMeta =
      const VerificationMeta('matchedAttractionId');
  @override
  late final GeneratedColumn<int> matchedAttractionId = GeneratedColumn<int>(
    'matched_attraction_id',
    aliasedName,
    true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _isDownloadedMeta = const VerificationMeta(
    'isDownloaded',
  );
  @override
  late final GeneratedColumn<bool> isDownloaded = GeneratedColumn<bool>(
    'is_downloaded',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("is_downloaded" IN (0, 1))',
    ),
    defaultValue: const Constant(false),
  );
  static const VerificationMeta _localFilePathMeta = const VerificationMeta(
    'localFilePath',
  );
  @override
  late final GeneratedColumn<String> localFilePath = GeneratedColumn<String>(
    'local_file_path',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _cachedAtMeta = const VerificationMeta(
    'cachedAt',
  );
  @override
  late final GeneratedColumn<DateTime> cachedAt = GeneratedColumn<DateTime>(
    'cached_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    title,
    url,
    modified,
    summary,
    fileExt,
    matchedAttractionId,
    isDownloaded,
    localFilePath,
    cachedAt,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'audio_guide_table';
  @override
  VerificationContext validateIntegrity(
    Insertable<AudioGuideTableData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('title')) {
      context.handle(
        _titleMeta,
        title.isAcceptableOrUnknown(data['title']!, _titleMeta),
      );
    } else if (isInserting) {
      context.missing(_titleMeta);
    }
    if (data.containsKey('url')) {
      context.handle(
        _urlMeta,
        url.isAcceptableOrUnknown(data['url']!, _urlMeta),
      );
    } else if (isInserting) {
      context.missing(_urlMeta);
    }
    if (data.containsKey('modified')) {
      context.handle(
        _modifiedMeta,
        modified.isAcceptableOrUnknown(data['modified']!, _modifiedMeta),
      );
    } else if (isInserting) {
      context.missing(_modifiedMeta);
    }
    if (data.containsKey('summary')) {
      context.handle(
        _summaryMeta,
        summary.isAcceptableOrUnknown(data['summary']!, _summaryMeta),
      );
    }
    if (data.containsKey('file_ext')) {
      context.handle(
        _fileExtMeta,
        fileExt.isAcceptableOrUnknown(data['file_ext']!, _fileExtMeta),
      );
    }
    if (data.containsKey('matched_attraction_id')) {
      context.handle(
        _matchedAttractionIdMeta,
        matchedAttractionId.isAcceptableOrUnknown(
          data['matched_attraction_id']!,
          _matchedAttractionIdMeta,
        ),
      );
    }
    if (data.containsKey('is_downloaded')) {
      context.handle(
        _isDownloadedMeta,
        isDownloaded.isAcceptableOrUnknown(
          data['is_downloaded']!,
          _isDownloadedMeta,
        ),
      );
    }
    if (data.containsKey('local_file_path')) {
      context.handle(
        _localFilePathMeta,
        localFilePath.isAcceptableOrUnknown(
          data['local_file_path']!,
          _localFilePathMeta,
        ),
      );
    }
    if (data.containsKey('cached_at')) {
      context.handle(
        _cachedAtMeta,
        cachedAt.isAcceptableOrUnknown(data['cached_at']!, _cachedAtMeta),
      );
    } else if (isInserting) {
      context.missing(_cachedAtMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  AudioGuideTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return AudioGuideTableData(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      title: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}title'],
      )!,
      url: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}url'],
      )!,
      modified: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}modified'],
      )!,
      summary: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}summary'],
      ),
      fileExt: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}file_ext'],
      ),
      matchedAttractionId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}matched_attraction_id'],
      ),
      isDownloaded: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}is_downloaded'],
      )!,
      localFilePath: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}local_file_path'],
      ),
      cachedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}cached_at'],
      )!,
    );
  }

  @override
  $AudioGuideTableTable createAlias(String alias) {
    return $AudioGuideTableTable(attachedDatabase, alias);
  }
}

class AudioGuideTableData extends DataClass
    implements Insertable<AudioGuideTableData> {
  final int id;
  final String title;
  final String url;
  final String modified;
  final String? summary;
  final String? fileExt;
  final int? matchedAttractionId;
  final bool isDownloaded;
  final String? localFilePath;
  final DateTime cachedAt;
  const AudioGuideTableData({
    required this.id,
    required this.title,
    required this.url,
    required this.modified,
    this.summary,
    this.fileExt,
    this.matchedAttractionId,
    required this.isDownloaded,
    this.localFilePath,
    required this.cachedAt,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['title'] = Variable<String>(title);
    map['url'] = Variable<String>(url);
    map['modified'] = Variable<String>(modified);
    if (!nullToAbsent || summary != null) {
      map['summary'] = Variable<String>(summary);
    }
    if (!nullToAbsent || fileExt != null) {
      map['file_ext'] = Variable<String>(fileExt);
    }
    if (!nullToAbsent || matchedAttractionId != null) {
      map['matched_attraction_id'] = Variable<int>(matchedAttractionId);
    }
    map['is_downloaded'] = Variable<bool>(isDownloaded);
    if (!nullToAbsent || localFilePath != null) {
      map['local_file_path'] = Variable<String>(localFilePath);
    }
    map['cached_at'] = Variable<DateTime>(cachedAt);
    return map;
  }

  AudioGuideTableCompanion toCompanion(bool nullToAbsent) {
    return AudioGuideTableCompanion(
      id: Value(id),
      title: Value(title),
      url: Value(url),
      modified: Value(modified),
      summary: summary == null && nullToAbsent
          ? const Value.absent()
          : Value(summary),
      fileExt: fileExt == null && nullToAbsent
          ? const Value.absent()
          : Value(fileExt),
      matchedAttractionId: matchedAttractionId == null && nullToAbsent
          ? const Value.absent()
          : Value(matchedAttractionId),
      isDownloaded: Value(isDownloaded),
      localFilePath: localFilePath == null && nullToAbsent
          ? const Value.absent()
          : Value(localFilePath),
      cachedAt: Value(cachedAt),
    );
  }

  factory AudioGuideTableData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return AudioGuideTableData(
      id: serializer.fromJson<int>(json['id']),
      title: serializer.fromJson<String>(json['title']),
      url: serializer.fromJson<String>(json['url']),
      modified: serializer.fromJson<String>(json['modified']),
      summary: serializer.fromJson<String?>(json['summary']),
      fileExt: serializer.fromJson<String?>(json['fileExt']),
      matchedAttractionId: serializer.fromJson<int?>(
        json['matchedAttractionId'],
      ),
      isDownloaded: serializer.fromJson<bool>(json['isDownloaded']),
      localFilePath: serializer.fromJson<String?>(json['localFilePath']),
      cachedAt: serializer.fromJson<DateTime>(json['cachedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'title': serializer.toJson<String>(title),
      'url': serializer.toJson<String>(url),
      'modified': serializer.toJson<String>(modified),
      'summary': serializer.toJson<String?>(summary),
      'fileExt': serializer.toJson<String?>(fileExt),
      'matchedAttractionId': serializer.toJson<int?>(matchedAttractionId),
      'isDownloaded': serializer.toJson<bool>(isDownloaded),
      'localFilePath': serializer.toJson<String?>(localFilePath),
      'cachedAt': serializer.toJson<DateTime>(cachedAt),
    };
  }

  AudioGuideTableData copyWith({
    int? id,
    String? title,
    String? url,
    String? modified,
    Value<String?> summary = const Value.absent(),
    Value<String?> fileExt = const Value.absent(),
    Value<int?> matchedAttractionId = const Value.absent(),
    bool? isDownloaded,
    Value<String?> localFilePath = const Value.absent(),
    DateTime? cachedAt,
  }) => AudioGuideTableData(
    id: id ?? this.id,
    title: title ?? this.title,
    url: url ?? this.url,
    modified: modified ?? this.modified,
    summary: summary.present ? summary.value : this.summary,
    fileExt: fileExt.present ? fileExt.value : this.fileExt,
    matchedAttractionId: matchedAttractionId.present
        ? matchedAttractionId.value
        : this.matchedAttractionId,
    isDownloaded: isDownloaded ?? this.isDownloaded,
    localFilePath: localFilePath.present
        ? localFilePath.value
        : this.localFilePath,
    cachedAt: cachedAt ?? this.cachedAt,
  );
  AudioGuideTableData copyWithCompanion(AudioGuideTableCompanion data) {
    return AudioGuideTableData(
      id: data.id.present ? data.id.value : this.id,
      title: data.title.present ? data.title.value : this.title,
      url: data.url.present ? data.url.value : this.url,
      modified: data.modified.present ? data.modified.value : this.modified,
      summary: data.summary.present ? data.summary.value : this.summary,
      fileExt: data.fileExt.present ? data.fileExt.value : this.fileExt,
      matchedAttractionId: data.matchedAttractionId.present
          ? data.matchedAttractionId.value
          : this.matchedAttractionId,
      isDownloaded: data.isDownloaded.present
          ? data.isDownloaded.value
          : this.isDownloaded,
      localFilePath: data.localFilePath.present
          ? data.localFilePath.value
          : this.localFilePath,
      cachedAt: data.cachedAt.present ? data.cachedAt.value : this.cachedAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('AudioGuideTableData(')
          ..write('id: $id, ')
          ..write('title: $title, ')
          ..write('url: $url, ')
          ..write('modified: $modified, ')
          ..write('summary: $summary, ')
          ..write('fileExt: $fileExt, ')
          ..write('matchedAttractionId: $matchedAttractionId, ')
          ..write('isDownloaded: $isDownloaded, ')
          ..write('localFilePath: $localFilePath, ')
          ..write('cachedAt: $cachedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    title,
    url,
    modified,
    summary,
    fileExt,
    matchedAttractionId,
    isDownloaded,
    localFilePath,
    cachedAt,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is AudioGuideTableData &&
          other.id == this.id &&
          other.title == this.title &&
          other.url == this.url &&
          other.modified == this.modified &&
          other.summary == this.summary &&
          other.fileExt == this.fileExt &&
          other.matchedAttractionId == this.matchedAttractionId &&
          other.isDownloaded == this.isDownloaded &&
          other.localFilePath == this.localFilePath &&
          other.cachedAt == this.cachedAt);
}

class AudioGuideTableCompanion extends UpdateCompanion<AudioGuideTableData> {
  final Value<int> id;
  final Value<String> title;
  final Value<String> url;
  final Value<String> modified;
  final Value<String?> summary;
  final Value<String?> fileExt;
  final Value<int?> matchedAttractionId;
  final Value<bool> isDownloaded;
  final Value<String?> localFilePath;
  final Value<DateTime> cachedAt;
  const AudioGuideTableCompanion({
    this.id = const Value.absent(),
    this.title = const Value.absent(),
    this.url = const Value.absent(),
    this.modified = const Value.absent(),
    this.summary = const Value.absent(),
    this.fileExt = const Value.absent(),
    this.matchedAttractionId = const Value.absent(),
    this.isDownloaded = const Value.absent(),
    this.localFilePath = const Value.absent(),
    this.cachedAt = const Value.absent(),
  });
  AudioGuideTableCompanion.insert({
    this.id = const Value.absent(),
    required String title,
    required String url,
    required String modified,
    this.summary = const Value.absent(),
    this.fileExt = const Value.absent(),
    this.matchedAttractionId = const Value.absent(),
    this.isDownloaded = const Value.absent(),
    this.localFilePath = const Value.absent(),
    required DateTime cachedAt,
  }) : title = Value(title),
       url = Value(url),
       modified = Value(modified),
       cachedAt = Value(cachedAt);
  static Insertable<AudioGuideTableData> custom({
    Expression<int>? id,
    Expression<String>? title,
    Expression<String>? url,
    Expression<String>? modified,
    Expression<String>? summary,
    Expression<String>? fileExt,
    Expression<int>? matchedAttractionId,
    Expression<bool>? isDownloaded,
    Expression<String>? localFilePath,
    Expression<DateTime>? cachedAt,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (title != null) 'title': title,
      if (url != null) 'url': url,
      if (modified != null) 'modified': modified,
      if (summary != null) 'summary': summary,
      if (fileExt != null) 'file_ext': fileExt,
      if (matchedAttractionId != null)
        'matched_attraction_id': matchedAttractionId,
      if (isDownloaded != null) 'is_downloaded': isDownloaded,
      if (localFilePath != null) 'local_file_path': localFilePath,
      if (cachedAt != null) 'cached_at': cachedAt,
    });
  }

  AudioGuideTableCompanion copyWith({
    Value<int>? id,
    Value<String>? title,
    Value<String>? url,
    Value<String>? modified,
    Value<String?>? summary,
    Value<String?>? fileExt,
    Value<int?>? matchedAttractionId,
    Value<bool>? isDownloaded,
    Value<String?>? localFilePath,
    Value<DateTime>? cachedAt,
  }) {
    return AudioGuideTableCompanion(
      id: id ?? this.id,
      title: title ?? this.title,
      url: url ?? this.url,
      modified: modified ?? this.modified,
      summary: summary ?? this.summary,
      fileExt: fileExt ?? this.fileExt,
      matchedAttractionId: matchedAttractionId ?? this.matchedAttractionId,
      isDownloaded: isDownloaded ?? this.isDownloaded,
      localFilePath: localFilePath ?? this.localFilePath,
      cachedAt: cachedAt ?? this.cachedAt,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (title.present) {
      map['title'] = Variable<String>(title.value);
    }
    if (url.present) {
      map['url'] = Variable<String>(url.value);
    }
    if (modified.present) {
      map['modified'] = Variable<String>(modified.value);
    }
    if (summary.present) {
      map['summary'] = Variable<String>(summary.value);
    }
    if (fileExt.present) {
      map['file_ext'] = Variable<String>(fileExt.value);
    }
    if (matchedAttractionId.present) {
      map['matched_attraction_id'] = Variable<int>(matchedAttractionId.value);
    }
    if (isDownloaded.present) {
      map['is_downloaded'] = Variable<bool>(isDownloaded.value);
    }
    if (localFilePath.present) {
      map['local_file_path'] = Variable<String>(localFilePath.value);
    }
    if (cachedAt.present) {
      map['cached_at'] = Variable<DateTime>(cachedAt.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('AudioGuideTableCompanion(')
          ..write('id: $id, ')
          ..write('title: $title, ')
          ..write('url: $url, ')
          ..write('modified: $modified, ')
          ..write('summary: $summary, ')
          ..write('fileExt: $fileExt, ')
          ..write('matchedAttractionId: $matchedAttractionId, ')
          ..write('isDownloaded: $isDownloaded, ')
          ..write('localFilePath: $localFilePath, ')
          ..write('cachedAt: $cachedAt')
          ..write(')'))
        .toString();
  }
}

class $ActivityTableTable extends ActivityTable
    with TableInfo<$ActivityTableTable, ActivityTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ActivityTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _titleMeta = const VerificationMeta('title');
  @override
  late final GeneratedColumn<String> title = GeneratedColumn<String>(
    'title',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _descriptionMeta = const VerificationMeta(
    'description',
  );
  @override
  late final GeneratedColumn<String> description = GeneratedColumn<String>(
    'description',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _beginMeta = const VerificationMeta('begin');
  @override
  late final GeneratedColumn<String> begin = GeneratedColumn<String>(
    'begin',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _endMeta = const VerificationMeta('end');
  @override
  late final GeneratedColumn<String> end = GeneratedColumn<String>(
    'end',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _postedMeta = const VerificationMeta('posted');
  @override
  late final GeneratedColumn<String> posted = GeneratedColumn<String>(
    'posted',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _modifiedMeta = const VerificationMeta(
    'modified',
  );
  @override
  late final GeneratedColumn<String> modified = GeneratedColumn<String>(
    'modified',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _urlMeta = const VerificationMeta('url');
  @override
  late final GeneratedColumn<String> url = GeneratedColumn<String>(
    'url',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _addressMeta = const VerificationMeta(
    'address',
  );
  @override
  late final GeneratedColumn<String> address = GeneratedColumn<String>(
    'address',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _districMeta = const VerificationMeta(
    'distric',
  );
  @override
  late final GeneratedColumn<String> distric = GeneratedColumn<String>(
    'distric',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _nlatMeta = const VerificationMeta('nlat');
  @override
  late final GeneratedColumn<String> nlat = GeneratedColumn<String>(
    'nlat',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _elongMeta = const VerificationMeta('elong');
  @override
  late final GeneratedColumn<String> elong = GeneratedColumn<String>(
    'elong',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _organizerMeta = const VerificationMeta(
    'organizer',
  );
  @override
  late final GeneratedColumn<String> organizer = GeneratedColumn<String>(
    'organizer',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _coRganizerMeta = const VerificationMeta(
    'coRganizer',
  );
  @override
  late final GeneratedColumn<String> coRganizer = GeneratedColumn<String>(
    'co_rganizer',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _contactMeta = const VerificationMeta(
    'contact',
  );
  @override
  late final GeneratedColumn<String> contact = GeneratedColumn<String>(
    'contact',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _telMeta = const VerificationMeta('tel');
  @override
  late final GeneratedColumn<String> tel = GeneratedColumn<String>(
    'tel',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _ticketMeta = const VerificationMeta('ticket');
  @override
  late final GeneratedColumn<String> ticket = GeneratedColumn<String>(
    'ticket',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _trafficMeta = const VerificationMeta(
    'traffic',
  );
  @override
  late final GeneratedColumn<String> traffic = GeneratedColumn<String>(
    'traffic',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _parkingMeta = const VerificationMeta(
    'parking',
  );
  @override
  late final GeneratedColumn<String> parking = GeneratedColumn<String>(
    'parking',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _linksJsonMeta = const VerificationMeta(
    'linksJson',
  );
  @override
  late final GeneratedColumn<String> linksJson = GeneratedColumn<String>(
    'links_json',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    defaultValue: const Constant('[]'),
  );
  static const VerificationMeta _cachedAtMeta = const VerificationMeta(
    'cachedAt',
  );
  @override
  late final GeneratedColumn<DateTime> cachedAt = GeneratedColumn<DateTime>(
    'cached_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    title,
    description,
    begin,
    end,
    posted,
    modified,
    url,
    address,
    distric,
    nlat,
    elong,
    organizer,
    coRganizer,
    contact,
    tel,
    ticket,
    traffic,
    parking,
    linksJson,
    cachedAt,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'activity_table';
  @override
  VerificationContext validateIntegrity(
    Insertable<ActivityTableData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('title')) {
      context.handle(
        _titleMeta,
        title.isAcceptableOrUnknown(data['title']!, _titleMeta),
      );
    } else if (isInserting) {
      context.missing(_titleMeta);
    }
    if (data.containsKey('description')) {
      context.handle(
        _descriptionMeta,
        description.isAcceptableOrUnknown(
          data['description']!,
          _descriptionMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_descriptionMeta);
    }
    if (data.containsKey('begin')) {
      context.handle(
        _beginMeta,
        begin.isAcceptableOrUnknown(data['begin']!, _beginMeta),
      );
    } else if (isInserting) {
      context.missing(_beginMeta);
    }
    if (data.containsKey('end')) {
      context.handle(
        _endMeta,
        end.isAcceptableOrUnknown(data['end']!, _endMeta),
      );
    } else if (isInserting) {
      context.missing(_endMeta);
    }
    if (data.containsKey('posted')) {
      context.handle(
        _postedMeta,
        posted.isAcceptableOrUnknown(data['posted']!, _postedMeta),
      );
    } else if (isInserting) {
      context.missing(_postedMeta);
    }
    if (data.containsKey('modified')) {
      context.handle(
        _modifiedMeta,
        modified.isAcceptableOrUnknown(data['modified']!, _modifiedMeta),
      );
    } else if (isInserting) {
      context.missing(_modifiedMeta);
    }
    if (data.containsKey('url')) {
      context.handle(
        _urlMeta,
        url.isAcceptableOrUnknown(data['url']!, _urlMeta),
      );
    } else if (isInserting) {
      context.missing(_urlMeta);
    }
    if (data.containsKey('address')) {
      context.handle(
        _addressMeta,
        address.isAcceptableOrUnknown(data['address']!, _addressMeta),
      );
    } else if (isInserting) {
      context.missing(_addressMeta);
    }
    if (data.containsKey('distric')) {
      context.handle(
        _districMeta,
        distric.isAcceptableOrUnknown(data['distric']!, _districMeta),
      );
    } else if (isInserting) {
      context.missing(_districMeta);
    }
    if (data.containsKey('nlat')) {
      context.handle(
        _nlatMeta,
        nlat.isAcceptableOrUnknown(data['nlat']!, _nlatMeta),
      );
    } else if (isInserting) {
      context.missing(_nlatMeta);
    }
    if (data.containsKey('elong')) {
      context.handle(
        _elongMeta,
        elong.isAcceptableOrUnknown(data['elong']!, _elongMeta),
      );
    } else if (isInserting) {
      context.missing(_elongMeta);
    }
    if (data.containsKey('organizer')) {
      context.handle(
        _organizerMeta,
        organizer.isAcceptableOrUnknown(data['organizer']!, _organizerMeta),
      );
    } else if (isInserting) {
      context.missing(_organizerMeta);
    }
    if (data.containsKey('co_rganizer')) {
      context.handle(
        _coRganizerMeta,
        coRganizer.isAcceptableOrUnknown(data['co_rganizer']!, _coRganizerMeta),
      );
    } else if (isInserting) {
      context.missing(_coRganizerMeta);
    }
    if (data.containsKey('contact')) {
      context.handle(
        _contactMeta,
        contact.isAcceptableOrUnknown(data['contact']!, _contactMeta),
      );
    } else if (isInserting) {
      context.missing(_contactMeta);
    }
    if (data.containsKey('tel')) {
      context.handle(
        _telMeta,
        tel.isAcceptableOrUnknown(data['tel']!, _telMeta),
      );
    } else if (isInserting) {
      context.missing(_telMeta);
    }
    if (data.containsKey('ticket')) {
      context.handle(
        _ticketMeta,
        ticket.isAcceptableOrUnknown(data['ticket']!, _ticketMeta),
      );
    } else if (isInserting) {
      context.missing(_ticketMeta);
    }
    if (data.containsKey('traffic')) {
      context.handle(
        _trafficMeta,
        traffic.isAcceptableOrUnknown(data['traffic']!, _trafficMeta),
      );
    } else if (isInserting) {
      context.missing(_trafficMeta);
    }
    if (data.containsKey('parking')) {
      context.handle(
        _parkingMeta,
        parking.isAcceptableOrUnknown(data['parking']!, _parkingMeta),
      );
    } else if (isInserting) {
      context.missing(_parkingMeta);
    }
    if (data.containsKey('links_json')) {
      context.handle(
        _linksJsonMeta,
        linksJson.isAcceptableOrUnknown(data['links_json']!, _linksJsonMeta),
      );
    }
    if (data.containsKey('cached_at')) {
      context.handle(
        _cachedAtMeta,
        cachedAt.isAcceptableOrUnknown(data['cached_at']!, _cachedAtMeta),
      );
    } else if (isInserting) {
      context.missing(_cachedAtMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  ActivityTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return ActivityTableData(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      title: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}title'],
      )!,
      description: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}description'],
      )!,
      begin: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}begin'],
      )!,
      end: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}end'],
      )!,
      posted: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}posted'],
      )!,
      modified: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}modified'],
      )!,
      url: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}url'],
      )!,
      address: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}address'],
      )!,
      distric: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}distric'],
      )!,
      nlat: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}nlat'],
      )!,
      elong: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}elong'],
      )!,
      organizer: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}organizer'],
      )!,
      coRganizer: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}co_rganizer'],
      )!,
      contact: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}contact'],
      )!,
      tel: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}tel'],
      )!,
      ticket: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}ticket'],
      )!,
      traffic: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}traffic'],
      )!,
      parking: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}parking'],
      )!,
      linksJson: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}links_json'],
      )!,
      cachedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}cached_at'],
      )!,
    );
  }

  @override
  $ActivityTableTable createAlias(String alias) {
    return $ActivityTableTable(attachedDatabase, alias);
  }
}

class ActivityTableData extends DataClass
    implements Insertable<ActivityTableData> {
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
  final String linksJson;
  final DateTime cachedAt;
  const ActivityTableData({
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
    required this.linksJson,
    required this.cachedAt,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['title'] = Variable<String>(title);
    map['description'] = Variable<String>(description);
    map['begin'] = Variable<String>(begin);
    map['end'] = Variable<String>(end);
    map['posted'] = Variable<String>(posted);
    map['modified'] = Variable<String>(modified);
    map['url'] = Variable<String>(url);
    map['address'] = Variable<String>(address);
    map['distric'] = Variable<String>(distric);
    map['nlat'] = Variable<String>(nlat);
    map['elong'] = Variable<String>(elong);
    map['organizer'] = Variable<String>(organizer);
    map['co_rganizer'] = Variable<String>(coRganizer);
    map['contact'] = Variable<String>(contact);
    map['tel'] = Variable<String>(tel);
    map['ticket'] = Variable<String>(ticket);
    map['traffic'] = Variable<String>(traffic);
    map['parking'] = Variable<String>(parking);
    map['links_json'] = Variable<String>(linksJson);
    map['cached_at'] = Variable<DateTime>(cachedAt);
    return map;
  }

  ActivityTableCompanion toCompanion(bool nullToAbsent) {
    return ActivityTableCompanion(
      id: Value(id),
      title: Value(title),
      description: Value(description),
      begin: Value(begin),
      end: Value(end),
      posted: Value(posted),
      modified: Value(modified),
      url: Value(url),
      address: Value(address),
      distric: Value(distric),
      nlat: Value(nlat),
      elong: Value(elong),
      organizer: Value(organizer),
      coRganizer: Value(coRganizer),
      contact: Value(contact),
      tel: Value(tel),
      ticket: Value(ticket),
      traffic: Value(traffic),
      parking: Value(parking),
      linksJson: Value(linksJson),
      cachedAt: Value(cachedAt),
    );
  }

  factory ActivityTableData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return ActivityTableData(
      id: serializer.fromJson<int>(json['id']),
      title: serializer.fromJson<String>(json['title']),
      description: serializer.fromJson<String>(json['description']),
      begin: serializer.fromJson<String>(json['begin']),
      end: serializer.fromJson<String>(json['end']),
      posted: serializer.fromJson<String>(json['posted']),
      modified: serializer.fromJson<String>(json['modified']),
      url: serializer.fromJson<String>(json['url']),
      address: serializer.fromJson<String>(json['address']),
      distric: serializer.fromJson<String>(json['distric']),
      nlat: serializer.fromJson<String>(json['nlat']),
      elong: serializer.fromJson<String>(json['elong']),
      organizer: serializer.fromJson<String>(json['organizer']),
      coRganizer: serializer.fromJson<String>(json['coRganizer']),
      contact: serializer.fromJson<String>(json['contact']),
      tel: serializer.fromJson<String>(json['tel']),
      ticket: serializer.fromJson<String>(json['ticket']),
      traffic: serializer.fromJson<String>(json['traffic']),
      parking: serializer.fromJson<String>(json['parking']),
      linksJson: serializer.fromJson<String>(json['linksJson']),
      cachedAt: serializer.fromJson<DateTime>(json['cachedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'title': serializer.toJson<String>(title),
      'description': serializer.toJson<String>(description),
      'begin': serializer.toJson<String>(begin),
      'end': serializer.toJson<String>(end),
      'posted': serializer.toJson<String>(posted),
      'modified': serializer.toJson<String>(modified),
      'url': serializer.toJson<String>(url),
      'address': serializer.toJson<String>(address),
      'distric': serializer.toJson<String>(distric),
      'nlat': serializer.toJson<String>(nlat),
      'elong': serializer.toJson<String>(elong),
      'organizer': serializer.toJson<String>(organizer),
      'coRganizer': serializer.toJson<String>(coRganizer),
      'contact': serializer.toJson<String>(contact),
      'tel': serializer.toJson<String>(tel),
      'ticket': serializer.toJson<String>(ticket),
      'traffic': serializer.toJson<String>(traffic),
      'parking': serializer.toJson<String>(parking),
      'linksJson': serializer.toJson<String>(linksJson),
      'cachedAt': serializer.toJson<DateTime>(cachedAt),
    };
  }

  ActivityTableData copyWith({
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
    String? linksJson,
    DateTime? cachedAt,
  }) => ActivityTableData(
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
    linksJson: linksJson ?? this.linksJson,
    cachedAt: cachedAt ?? this.cachedAt,
  );
  ActivityTableData copyWithCompanion(ActivityTableCompanion data) {
    return ActivityTableData(
      id: data.id.present ? data.id.value : this.id,
      title: data.title.present ? data.title.value : this.title,
      description: data.description.present
          ? data.description.value
          : this.description,
      begin: data.begin.present ? data.begin.value : this.begin,
      end: data.end.present ? data.end.value : this.end,
      posted: data.posted.present ? data.posted.value : this.posted,
      modified: data.modified.present ? data.modified.value : this.modified,
      url: data.url.present ? data.url.value : this.url,
      address: data.address.present ? data.address.value : this.address,
      distric: data.distric.present ? data.distric.value : this.distric,
      nlat: data.nlat.present ? data.nlat.value : this.nlat,
      elong: data.elong.present ? data.elong.value : this.elong,
      organizer: data.organizer.present ? data.organizer.value : this.organizer,
      coRganizer: data.coRganizer.present
          ? data.coRganizer.value
          : this.coRganizer,
      contact: data.contact.present ? data.contact.value : this.contact,
      tel: data.tel.present ? data.tel.value : this.tel,
      ticket: data.ticket.present ? data.ticket.value : this.ticket,
      traffic: data.traffic.present ? data.traffic.value : this.traffic,
      parking: data.parking.present ? data.parking.value : this.parking,
      linksJson: data.linksJson.present ? data.linksJson.value : this.linksJson,
      cachedAt: data.cachedAt.present ? data.cachedAt.value : this.cachedAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('ActivityTableData(')
          ..write('id: $id, ')
          ..write('title: $title, ')
          ..write('description: $description, ')
          ..write('begin: $begin, ')
          ..write('end: $end, ')
          ..write('posted: $posted, ')
          ..write('modified: $modified, ')
          ..write('url: $url, ')
          ..write('address: $address, ')
          ..write('distric: $distric, ')
          ..write('nlat: $nlat, ')
          ..write('elong: $elong, ')
          ..write('organizer: $organizer, ')
          ..write('coRganizer: $coRganizer, ')
          ..write('contact: $contact, ')
          ..write('tel: $tel, ')
          ..write('ticket: $ticket, ')
          ..write('traffic: $traffic, ')
          ..write('parking: $parking, ')
          ..write('linksJson: $linksJson, ')
          ..write('cachedAt: $cachedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hashAll([
    id,
    title,
    description,
    begin,
    end,
    posted,
    modified,
    url,
    address,
    distric,
    nlat,
    elong,
    organizer,
    coRganizer,
    contact,
    tel,
    ticket,
    traffic,
    parking,
    linksJson,
    cachedAt,
  ]);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ActivityTableData &&
          other.id == this.id &&
          other.title == this.title &&
          other.description == this.description &&
          other.begin == this.begin &&
          other.end == this.end &&
          other.posted == this.posted &&
          other.modified == this.modified &&
          other.url == this.url &&
          other.address == this.address &&
          other.distric == this.distric &&
          other.nlat == this.nlat &&
          other.elong == this.elong &&
          other.organizer == this.organizer &&
          other.coRganizer == this.coRganizer &&
          other.contact == this.contact &&
          other.tel == this.tel &&
          other.ticket == this.ticket &&
          other.traffic == this.traffic &&
          other.parking == this.parking &&
          other.linksJson == this.linksJson &&
          other.cachedAt == this.cachedAt);
}

class ActivityTableCompanion extends UpdateCompanion<ActivityTableData> {
  final Value<int> id;
  final Value<String> title;
  final Value<String> description;
  final Value<String> begin;
  final Value<String> end;
  final Value<String> posted;
  final Value<String> modified;
  final Value<String> url;
  final Value<String> address;
  final Value<String> distric;
  final Value<String> nlat;
  final Value<String> elong;
  final Value<String> organizer;
  final Value<String> coRganizer;
  final Value<String> contact;
  final Value<String> tel;
  final Value<String> ticket;
  final Value<String> traffic;
  final Value<String> parking;
  final Value<String> linksJson;
  final Value<DateTime> cachedAt;
  const ActivityTableCompanion({
    this.id = const Value.absent(),
    this.title = const Value.absent(),
    this.description = const Value.absent(),
    this.begin = const Value.absent(),
    this.end = const Value.absent(),
    this.posted = const Value.absent(),
    this.modified = const Value.absent(),
    this.url = const Value.absent(),
    this.address = const Value.absent(),
    this.distric = const Value.absent(),
    this.nlat = const Value.absent(),
    this.elong = const Value.absent(),
    this.organizer = const Value.absent(),
    this.coRganizer = const Value.absent(),
    this.contact = const Value.absent(),
    this.tel = const Value.absent(),
    this.ticket = const Value.absent(),
    this.traffic = const Value.absent(),
    this.parking = const Value.absent(),
    this.linksJson = const Value.absent(),
    this.cachedAt = const Value.absent(),
  });
  ActivityTableCompanion.insert({
    this.id = const Value.absent(),
    required String title,
    required String description,
    required String begin,
    required String end,
    required String posted,
    required String modified,
    required String url,
    required String address,
    required String distric,
    required String nlat,
    required String elong,
    required String organizer,
    required String coRganizer,
    required String contact,
    required String tel,
    required String ticket,
    required String traffic,
    required String parking,
    this.linksJson = const Value.absent(),
    required DateTime cachedAt,
  }) : title = Value(title),
       description = Value(description),
       begin = Value(begin),
       end = Value(end),
       posted = Value(posted),
       modified = Value(modified),
       url = Value(url),
       address = Value(address),
       distric = Value(distric),
       nlat = Value(nlat),
       elong = Value(elong),
       organizer = Value(organizer),
       coRganizer = Value(coRganizer),
       contact = Value(contact),
       tel = Value(tel),
       ticket = Value(ticket),
       traffic = Value(traffic),
       parking = Value(parking),
       cachedAt = Value(cachedAt);
  static Insertable<ActivityTableData> custom({
    Expression<int>? id,
    Expression<String>? title,
    Expression<String>? description,
    Expression<String>? begin,
    Expression<String>? end,
    Expression<String>? posted,
    Expression<String>? modified,
    Expression<String>? url,
    Expression<String>? address,
    Expression<String>? distric,
    Expression<String>? nlat,
    Expression<String>? elong,
    Expression<String>? organizer,
    Expression<String>? coRganizer,
    Expression<String>? contact,
    Expression<String>? tel,
    Expression<String>? ticket,
    Expression<String>? traffic,
    Expression<String>? parking,
    Expression<String>? linksJson,
    Expression<DateTime>? cachedAt,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (title != null) 'title': title,
      if (description != null) 'description': description,
      if (begin != null) 'begin': begin,
      if (end != null) 'end': end,
      if (posted != null) 'posted': posted,
      if (modified != null) 'modified': modified,
      if (url != null) 'url': url,
      if (address != null) 'address': address,
      if (distric != null) 'distric': distric,
      if (nlat != null) 'nlat': nlat,
      if (elong != null) 'elong': elong,
      if (organizer != null) 'organizer': organizer,
      if (coRganizer != null) 'co_rganizer': coRganizer,
      if (contact != null) 'contact': contact,
      if (tel != null) 'tel': tel,
      if (ticket != null) 'ticket': ticket,
      if (traffic != null) 'traffic': traffic,
      if (parking != null) 'parking': parking,
      if (linksJson != null) 'links_json': linksJson,
      if (cachedAt != null) 'cached_at': cachedAt,
    });
  }

  ActivityTableCompanion copyWith({
    Value<int>? id,
    Value<String>? title,
    Value<String>? description,
    Value<String>? begin,
    Value<String>? end,
    Value<String>? posted,
    Value<String>? modified,
    Value<String>? url,
    Value<String>? address,
    Value<String>? distric,
    Value<String>? nlat,
    Value<String>? elong,
    Value<String>? organizer,
    Value<String>? coRganizer,
    Value<String>? contact,
    Value<String>? tel,
    Value<String>? ticket,
    Value<String>? traffic,
    Value<String>? parking,
    Value<String>? linksJson,
    Value<DateTime>? cachedAt,
  }) {
    return ActivityTableCompanion(
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
      linksJson: linksJson ?? this.linksJson,
      cachedAt: cachedAt ?? this.cachedAt,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (title.present) {
      map['title'] = Variable<String>(title.value);
    }
    if (description.present) {
      map['description'] = Variable<String>(description.value);
    }
    if (begin.present) {
      map['begin'] = Variable<String>(begin.value);
    }
    if (end.present) {
      map['end'] = Variable<String>(end.value);
    }
    if (posted.present) {
      map['posted'] = Variable<String>(posted.value);
    }
    if (modified.present) {
      map['modified'] = Variable<String>(modified.value);
    }
    if (url.present) {
      map['url'] = Variable<String>(url.value);
    }
    if (address.present) {
      map['address'] = Variable<String>(address.value);
    }
    if (distric.present) {
      map['distric'] = Variable<String>(distric.value);
    }
    if (nlat.present) {
      map['nlat'] = Variable<String>(nlat.value);
    }
    if (elong.present) {
      map['elong'] = Variable<String>(elong.value);
    }
    if (organizer.present) {
      map['organizer'] = Variable<String>(organizer.value);
    }
    if (coRganizer.present) {
      map['co_rganizer'] = Variable<String>(coRganizer.value);
    }
    if (contact.present) {
      map['contact'] = Variable<String>(contact.value);
    }
    if (tel.present) {
      map['tel'] = Variable<String>(tel.value);
    }
    if (ticket.present) {
      map['ticket'] = Variable<String>(ticket.value);
    }
    if (traffic.present) {
      map['traffic'] = Variable<String>(traffic.value);
    }
    if (parking.present) {
      map['parking'] = Variable<String>(parking.value);
    }
    if (linksJson.present) {
      map['links_json'] = Variable<String>(linksJson.value);
    }
    if (cachedAt.present) {
      map['cached_at'] = Variable<DateTime>(cachedAt.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ActivityTableCompanion(')
          ..write('id: $id, ')
          ..write('title: $title, ')
          ..write('description: $description, ')
          ..write('begin: $begin, ')
          ..write('end: $end, ')
          ..write('posted: $posted, ')
          ..write('modified: $modified, ')
          ..write('url: $url, ')
          ..write('address: $address, ')
          ..write('distric: $distric, ')
          ..write('nlat: $nlat, ')
          ..write('elong: $elong, ')
          ..write('organizer: $organizer, ')
          ..write('coRganizer: $coRganizer, ')
          ..write('contact: $contact, ')
          ..write('tel: $tel, ')
          ..write('ticket: $ticket, ')
          ..write('traffic: $traffic, ')
          ..write('parking: $parking, ')
          ..write('linksJson: $linksJson, ')
          ..write('cachedAt: $cachedAt')
          ..write(')'))
        .toString();
  }
}

class $SyncMetaTableTable extends SyncMetaTable
    with TableInfo<$SyncMetaTableTable, SyncMetaTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $SyncMetaTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _keyMeta = const VerificationMeta('key');
  @override
  late final GeneratedColumn<String> key = GeneratedColumn<String>(
    'key',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _lastSyncedAtMeta = const VerificationMeta(
    'lastSyncedAt',
  );
  @override
  late final GeneratedColumn<DateTime> lastSyncedAt = GeneratedColumn<DateTime>(
    'last_synced_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [key, lastSyncedAt];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'sync_meta_table';
  @override
  VerificationContext validateIntegrity(
    Insertable<SyncMetaTableData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('key')) {
      context.handle(
        _keyMeta,
        key.isAcceptableOrUnknown(data['key']!, _keyMeta),
      );
    } else if (isInserting) {
      context.missing(_keyMeta);
    }
    if (data.containsKey('last_synced_at')) {
      context.handle(
        _lastSyncedAtMeta,
        lastSyncedAt.isAcceptableOrUnknown(
          data['last_synced_at']!,
          _lastSyncedAtMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_lastSyncedAtMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {key};
  @override
  SyncMetaTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return SyncMetaTableData(
      key: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}key'],
      )!,
      lastSyncedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}last_synced_at'],
      )!,
    );
  }

  @override
  $SyncMetaTableTable createAlias(String alias) {
    return $SyncMetaTableTable(attachedDatabase, alias);
  }
}

class SyncMetaTableData extends DataClass
    implements Insertable<SyncMetaTableData> {
  final String key;
  final DateTime lastSyncedAt;
  const SyncMetaTableData({required this.key, required this.lastSyncedAt});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['key'] = Variable<String>(key);
    map['last_synced_at'] = Variable<DateTime>(lastSyncedAt);
    return map;
  }

  SyncMetaTableCompanion toCompanion(bool nullToAbsent) {
    return SyncMetaTableCompanion(
      key: Value(key),
      lastSyncedAt: Value(lastSyncedAt),
    );
  }

  factory SyncMetaTableData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return SyncMetaTableData(
      key: serializer.fromJson<String>(json['key']),
      lastSyncedAt: serializer.fromJson<DateTime>(json['lastSyncedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'key': serializer.toJson<String>(key),
      'lastSyncedAt': serializer.toJson<DateTime>(lastSyncedAt),
    };
  }

  SyncMetaTableData copyWith({String? key, DateTime? lastSyncedAt}) =>
      SyncMetaTableData(
        key: key ?? this.key,
        lastSyncedAt: lastSyncedAt ?? this.lastSyncedAt,
      );
  SyncMetaTableData copyWithCompanion(SyncMetaTableCompanion data) {
    return SyncMetaTableData(
      key: data.key.present ? data.key.value : this.key,
      lastSyncedAt: data.lastSyncedAt.present
          ? data.lastSyncedAt.value
          : this.lastSyncedAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('SyncMetaTableData(')
          ..write('key: $key, ')
          ..write('lastSyncedAt: $lastSyncedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(key, lastSyncedAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is SyncMetaTableData &&
          other.key == this.key &&
          other.lastSyncedAt == this.lastSyncedAt);
}

class SyncMetaTableCompanion extends UpdateCompanion<SyncMetaTableData> {
  final Value<String> key;
  final Value<DateTime> lastSyncedAt;
  final Value<int> rowid;
  const SyncMetaTableCompanion({
    this.key = const Value.absent(),
    this.lastSyncedAt = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  SyncMetaTableCompanion.insert({
    required String key,
    required DateTime lastSyncedAt,
    this.rowid = const Value.absent(),
  }) : key = Value(key),
       lastSyncedAt = Value(lastSyncedAt);
  static Insertable<SyncMetaTableData> custom({
    Expression<String>? key,
    Expression<DateTime>? lastSyncedAt,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (key != null) 'key': key,
      if (lastSyncedAt != null) 'last_synced_at': lastSyncedAt,
      if (rowid != null) 'rowid': rowid,
    });
  }

  SyncMetaTableCompanion copyWith({
    Value<String>? key,
    Value<DateTime>? lastSyncedAt,
    Value<int>? rowid,
  }) {
    return SyncMetaTableCompanion(
      key: key ?? this.key,
      lastSyncedAt: lastSyncedAt ?? this.lastSyncedAt,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (key.present) {
      map['key'] = Variable<String>(key.value);
    }
    if (lastSyncedAt.present) {
      map['last_synced_at'] = Variable<DateTime>(lastSyncedAt.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('SyncMetaTableCompanion(')
          ..write('key: $key, ')
          ..write('lastSyncedAt: $lastSyncedAt, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $ReminderTableTable extends ReminderTable
    with TableInfo<$ReminderTableTable, ReminderTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ReminderTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    hasAutoIncrement: true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'PRIMARY KEY AUTOINCREMENT',
    ),
  );
  static const VerificationMeta _sourceTypeMeta = const VerificationMeta(
    'sourceType',
  );
  @override
  late final GeneratedColumn<String> sourceType = GeneratedColumn<String>(
    'source_type',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _sourceIdMeta = const VerificationMeta(
    'sourceId',
  );
  @override
  late final GeneratedColumn<String> sourceId = GeneratedColumn<String>(
    'source_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _titleMeta = const VerificationMeta('title');
  @override
  late final GeneratedColumn<String> title = GeneratedColumn<String>(
    'title',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _subtitleMeta = const VerificationMeta(
    'subtitle',
  );
  @override
  late final GeneratedColumn<String> subtitle = GeneratedColumn<String>(
    'subtitle',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _imageUrlMeta = const VerificationMeta(
    'imageUrl',
  );
  @override
  late final GeneratedColumn<String> imageUrl = GeneratedColumn<String>(
    'image_url',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _addressMeta = const VerificationMeta(
    'address',
  );
  @override
  late final GeneratedColumn<String> address = GeneratedColumn<String>(
    'address',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _targetTimeMeta = const VerificationMeta(
    'targetTime',
  );
  @override
  late final GeneratedColumn<DateTime> targetTime = GeneratedColumn<DateTime>(
    'target_time',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _remindBeforeSecondsMeta =
      const VerificationMeta('remindBeforeSeconds');
  @override
  late final GeneratedColumn<int> remindBeforeSeconds = GeneratedColumn<int>(
    'remind_before_seconds',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultValue: const Constant(0),
  );
  static const VerificationMeta _notifyTimeMeta = const VerificationMeta(
    'notifyTime',
  );
  @override
  late final GeneratedColumn<DateTime> notifyTime = GeneratedColumn<DateTime>(
    'notify_time',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _notificationIdMeta = const VerificationMeta(
    'notificationId',
  );
  @override
  late final GeneratedColumn<int> notificationId = GeneratedColumn<int>(
    'notification_id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _routePathMeta = const VerificationMeta(
    'routePath',
  );
  @override
  late final GeneratedColumn<String> routePath = GeneratedColumn<String>(
    'route_path',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _payloadJsonMeta = const VerificationMeta(
    'payloadJson',
  );
  @override
  late final GeneratedColumn<String> payloadJson = GeneratedColumn<String>(
    'payload_json',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _isEnabledMeta = const VerificationMeta(
    'isEnabled',
  );
  @override
  late final GeneratedColumn<bool> isEnabled = GeneratedColumn<bool>(
    'is_enabled',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("is_enabled" IN (0, 1))',
    ),
    defaultValue: const Constant(true),
  );
  static const VerificationMeta _isDoneMeta = const VerificationMeta('isDone');
  @override
  late final GeneratedColumn<bool> isDone = GeneratedColumn<bool>(
    'is_done',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("is_done" IN (0, 1))',
    ),
    defaultValue: const Constant(false),
  );
  static const VerificationMeta _createdAtMeta = const VerificationMeta(
    'createdAt',
  );
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
    'created_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _updatedAtMeta = const VerificationMeta(
    'updatedAt',
  );
  @override
  late final GeneratedColumn<DateTime> updatedAt = GeneratedColumn<DateTime>(
    'updated_at',
    aliasedName,
    true,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    sourceType,
    sourceId,
    title,
    subtitle,
    imageUrl,
    address,
    targetTime,
    remindBeforeSeconds,
    notifyTime,
    notificationId,
    routePath,
    payloadJson,
    isEnabled,
    isDone,
    createdAt,
    updatedAt,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'reminder_table';
  @override
  VerificationContext validateIntegrity(
    Insertable<ReminderTableData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('source_type')) {
      context.handle(
        _sourceTypeMeta,
        sourceType.isAcceptableOrUnknown(data['source_type']!, _sourceTypeMeta),
      );
    } else if (isInserting) {
      context.missing(_sourceTypeMeta);
    }
    if (data.containsKey('source_id')) {
      context.handle(
        _sourceIdMeta,
        sourceId.isAcceptableOrUnknown(data['source_id']!, _sourceIdMeta),
      );
    } else if (isInserting) {
      context.missing(_sourceIdMeta);
    }
    if (data.containsKey('title')) {
      context.handle(
        _titleMeta,
        title.isAcceptableOrUnknown(data['title']!, _titleMeta),
      );
    } else if (isInserting) {
      context.missing(_titleMeta);
    }
    if (data.containsKey('subtitle')) {
      context.handle(
        _subtitleMeta,
        subtitle.isAcceptableOrUnknown(data['subtitle']!, _subtitleMeta),
      );
    }
    if (data.containsKey('image_url')) {
      context.handle(
        _imageUrlMeta,
        imageUrl.isAcceptableOrUnknown(data['image_url']!, _imageUrlMeta),
      );
    }
    if (data.containsKey('address')) {
      context.handle(
        _addressMeta,
        address.isAcceptableOrUnknown(data['address']!, _addressMeta),
      );
    }
    if (data.containsKey('target_time')) {
      context.handle(
        _targetTimeMeta,
        targetTime.isAcceptableOrUnknown(data['target_time']!, _targetTimeMeta),
      );
    } else if (isInserting) {
      context.missing(_targetTimeMeta);
    }
    if (data.containsKey('remind_before_seconds')) {
      context.handle(
        _remindBeforeSecondsMeta,
        remindBeforeSeconds.isAcceptableOrUnknown(
          data['remind_before_seconds']!,
          _remindBeforeSecondsMeta,
        ),
      );
    }
    if (data.containsKey('notify_time')) {
      context.handle(
        _notifyTimeMeta,
        notifyTime.isAcceptableOrUnknown(data['notify_time']!, _notifyTimeMeta),
      );
    } else if (isInserting) {
      context.missing(_notifyTimeMeta);
    }
    if (data.containsKey('notification_id')) {
      context.handle(
        _notificationIdMeta,
        notificationId.isAcceptableOrUnknown(
          data['notification_id']!,
          _notificationIdMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_notificationIdMeta);
    }
    if (data.containsKey('route_path')) {
      context.handle(
        _routePathMeta,
        routePath.isAcceptableOrUnknown(data['route_path']!, _routePathMeta),
      );
    } else if (isInserting) {
      context.missing(_routePathMeta);
    }
    if (data.containsKey('payload_json')) {
      context.handle(
        _payloadJsonMeta,
        payloadJson.isAcceptableOrUnknown(
          data['payload_json']!,
          _payloadJsonMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_payloadJsonMeta);
    }
    if (data.containsKey('is_enabled')) {
      context.handle(
        _isEnabledMeta,
        isEnabled.isAcceptableOrUnknown(data['is_enabled']!, _isEnabledMeta),
      );
    }
    if (data.containsKey('is_done')) {
      context.handle(
        _isDoneMeta,
        isDone.isAcceptableOrUnknown(data['is_done']!, _isDoneMeta),
      );
    }
    if (data.containsKey('created_at')) {
      context.handle(
        _createdAtMeta,
        createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta),
      );
    } else if (isInserting) {
      context.missing(_createdAtMeta);
    }
    if (data.containsKey('updated_at')) {
      context.handle(
        _updatedAtMeta,
        updatedAt.isAcceptableOrUnknown(data['updated_at']!, _updatedAtMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  ReminderTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return ReminderTableData(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      sourceType: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}source_type'],
      )!,
      sourceId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}source_id'],
      )!,
      title: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}title'],
      )!,
      subtitle: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}subtitle'],
      ),
      imageUrl: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}image_url'],
      ),
      address: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}address'],
      ),
      targetTime: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}target_time'],
      )!,
      remindBeforeSeconds: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}remind_before_seconds'],
      )!,
      notifyTime: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}notify_time'],
      )!,
      notificationId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}notification_id'],
      )!,
      routePath: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}route_path'],
      )!,
      payloadJson: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}payload_json'],
      )!,
      isEnabled: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}is_enabled'],
      )!,
      isDone: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}is_done'],
      )!,
      createdAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}created_at'],
      )!,
      updatedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}updated_at'],
      ),
    );
  }

  @override
  $ReminderTableTable createAlias(String alias) {
    return $ReminderTableTable(attachedDatabase, alias);
  }
}

class ReminderTableData extends DataClass
    implements Insertable<ReminderTableData> {
  final int id;
  final String sourceType;
  final String sourceId;
  final String title;
  final String? subtitle;
  final String? imageUrl;
  final String? address;
  final DateTime targetTime;
  final int remindBeforeSeconds;
  final DateTime notifyTime;
  final int notificationId;
  final String routePath;
  final String payloadJson;
  final bool isEnabled;
  final bool isDone;
  final DateTime createdAt;
  final DateTime? updatedAt;
  const ReminderTableData({
    required this.id,
    required this.sourceType,
    required this.sourceId,
    required this.title,
    this.subtitle,
    this.imageUrl,
    this.address,
    required this.targetTime,
    required this.remindBeforeSeconds,
    required this.notifyTime,
    required this.notificationId,
    required this.routePath,
    required this.payloadJson,
    required this.isEnabled,
    required this.isDone,
    required this.createdAt,
    this.updatedAt,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['source_type'] = Variable<String>(sourceType);
    map['source_id'] = Variable<String>(sourceId);
    map['title'] = Variable<String>(title);
    if (!nullToAbsent || subtitle != null) {
      map['subtitle'] = Variable<String>(subtitle);
    }
    if (!nullToAbsent || imageUrl != null) {
      map['image_url'] = Variable<String>(imageUrl);
    }
    if (!nullToAbsent || address != null) {
      map['address'] = Variable<String>(address);
    }
    map['target_time'] = Variable<DateTime>(targetTime);
    map['remind_before_seconds'] = Variable<int>(remindBeforeSeconds);
    map['notify_time'] = Variable<DateTime>(notifyTime);
    map['notification_id'] = Variable<int>(notificationId);
    map['route_path'] = Variable<String>(routePath);
    map['payload_json'] = Variable<String>(payloadJson);
    map['is_enabled'] = Variable<bool>(isEnabled);
    map['is_done'] = Variable<bool>(isDone);
    map['created_at'] = Variable<DateTime>(createdAt);
    if (!nullToAbsent || updatedAt != null) {
      map['updated_at'] = Variable<DateTime>(updatedAt);
    }
    return map;
  }

  ReminderTableCompanion toCompanion(bool nullToAbsent) {
    return ReminderTableCompanion(
      id: Value(id),
      sourceType: Value(sourceType),
      sourceId: Value(sourceId),
      title: Value(title),
      subtitle: subtitle == null && nullToAbsent
          ? const Value.absent()
          : Value(subtitle),
      imageUrl: imageUrl == null && nullToAbsent
          ? const Value.absent()
          : Value(imageUrl),
      address: address == null && nullToAbsent
          ? const Value.absent()
          : Value(address),
      targetTime: Value(targetTime),
      remindBeforeSeconds: Value(remindBeforeSeconds),
      notifyTime: Value(notifyTime),
      notificationId: Value(notificationId),
      routePath: Value(routePath),
      payloadJson: Value(payloadJson),
      isEnabled: Value(isEnabled),
      isDone: Value(isDone),
      createdAt: Value(createdAt),
      updatedAt: updatedAt == null && nullToAbsent
          ? const Value.absent()
          : Value(updatedAt),
    );
  }

  factory ReminderTableData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return ReminderTableData(
      id: serializer.fromJson<int>(json['id']),
      sourceType: serializer.fromJson<String>(json['sourceType']),
      sourceId: serializer.fromJson<String>(json['sourceId']),
      title: serializer.fromJson<String>(json['title']),
      subtitle: serializer.fromJson<String?>(json['subtitle']),
      imageUrl: serializer.fromJson<String?>(json['imageUrl']),
      address: serializer.fromJson<String?>(json['address']),
      targetTime: serializer.fromJson<DateTime>(json['targetTime']),
      remindBeforeSeconds: serializer.fromJson<int>(
        json['remindBeforeSeconds'],
      ),
      notifyTime: serializer.fromJson<DateTime>(json['notifyTime']),
      notificationId: serializer.fromJson<int>(json['notificationId']),
      routePath: serializer.fromJson<String>(json['routePath']),
      payloadJson: serializer.fromJson<String>(json['payloadJson']),
      isEnabled: serializer.fromJson<bool>(json['isEnabled']),
      isDone: serializer.fromJson<bool>(json['isDone']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      updatedAt: serializer.fromJson<DateTime?>(json['updatedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'sourceType': serializer.toJson<String>(sourceType),
      'sourceId': serializer.toJson<String>(sourceId),
      'title': serializer.toJson<String>(title),
      'subtitle': serializer.toJson<String?>(subtitle),
      'imageUrl': serializer.toJson<String?>(imageUrl),
      'address': serializer.toJson<String?>(address),
      'targetTime': serializer.toJson<DateTime>(targetTime),
      'remindBeforeSeconds': serializer.toJson<int>(remindBeforeSeconds),
      'notifyTime': serializer.toJson<DateTime>(notifyTime),
      'notificationId': serializer.toJson<int>(notificationId),
      'routePath': serializer.toJson<String>(routePath),
      'payloadJson': serializer.toJson<String>(payloadJson),
      'isEnabled': serializer.toJson<bool>(isEnabled),
      'isDone': serializer.toJson<bool>(isDone),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'updatedAt': serializer.toJson<DateTime?>(updatedAt),
    };
  }

  ReminderTableData copyWith({
    int? id,
    String? sourceType,
    String? sourceId,
    String? title,
    Value<String?> subtitle = const Value.absent(),
    Value<String?> imageUrl = const Value.absent(),
    Value<String?> address = const Value.absent(),
    DateTime? targetTime,
    int? remindBeforeSeconds,
    DateTime? notifyTime,
    int? notificationId,
    String? routePath,
    String? payloadJson,
    bool? isEnabled,
    bool? isDone,
    DateTime? createdAt,
    Value<DateTime?> updatedAt = const Value.absent(),
  }) => ReminderTableData(
    id: id ?? this.id,
    sourceType: sourceType ?? this.sourceType,
    sourceId: sourceId ?? this.sourceId,
    title: title ?? this.title,
    subtitle: subtitle.present ? subtitle.value : this.subtitle,
    imageUrl: imageUrl.present ? imageUrl.value : this.imageUrl,
    address: address.present ? address.value : this.address,
    targetTime: targetTime ?? this.targetTime,
    remindBeforeSeconds: remindBeforeSeconds ?? this.remindBeforeSeconds,
    notifyTime: notifyTime ?? this.notifyTime,
    notificationId: notificationId ?? this.notificationId,
    routePath: routePath ?? this.routePath,
    payloadJson: payloadJson ?? this.payloadJson,
    isEnabled: isEnabled ?? this.isEnabled,
    isDone: isDone ?? this.isDone,
    createdAt: createdAt ?? this.createdAt,
    updatedAt: updatedAt.present ? updatedAt.value : this.updatedAt,
  );
  ReminderTableData copyWithCompanion(ReminderTableCompanion data) {
    return ReminderTableData(
      id: data.id.present ? data.id.value : this.id,
      sourceType: data.sourceType.present
          ? data.sourceType.value
          : this.sourceType,
      sourceId: data.sourceId.present ? data.sourceId.value : this.sourceId,
      title: data.title.present ? data.title.value : this.title,
      subtitle: data.subtitle.present ? data.subtitle.value : this.subtitle,
      imageUrl: data.imageUrl.present ? data.imageUrl.value : this.imageUrl,
      address: data.address.present ? data.address.value : this.address,
      targetTime: data.targetTime.present
          ? data.targetTime.value
          : this.targetTime,
      remindBeforeSeconds: data.remindBeforeSeconds.present
          ? data.remindBeforeSeconds.value
          : this.remindBeforeSeconds,
      notifyTime: data.notifyTime.present
          ? data.notifyTime.value
          : this.notifyTime,
      notificationId: data.notificationId.present
          ? data.notificationId.value
          : this.notificationId,
      routePath: data.routePath.present ? data.routePath.value : this.routePath,
      payloadJson: data.payloadJson.present
          ? data.payloadJson.value
          : this.payloadJson,
      isEnabled: data.isEnabled.present ? data.isEnabled.value : this.isEnabled,
      isDone: data.isDone.present ? data.isDone.value : this.isDone,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
      updatedAt: data.updatedAt.present ? data.updatedAt.value : this.updatedAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('ReminderTableData(')
          ..write('id: $id, ')
          ..write('sourceType: $sourceType, ')
          ..write('sourceId: $sourceId, ')
          ..write('title: $title, ')
          ..write('subtitle: $subtitle, ')
          ..write('imageUrl: $imageUrl, ')
          ..write('address: $address, ')
          ..write('targetTime: $targetTime, ')
          ..write('remindBeforeSeconds: $remindBeforeSeconds, ')
          ..write('notifyTime: $notifyTime, ')
          ..write('notificationId: $notificationId, ')
          ..write('routePath: $routePath, ')
          ..write('payloadJson: $payloadJson, ')
          ..write('isEnabled: $isEnabled, ')
          ..write('isDone: $isDone, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    sourceType,
    sourceId,
    title,
    subtitle,
    imageUrl,
    address,
    targetTime,
    remindBeforeSeconds,
    notifyTime,
    notificationId,
    routePath,
    payloadJson,
    isEnabled,
    isDone,
    createdAt,
    updatedAt,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ReminderTableData &&
          other.id == this.id &&
          other.sourceType == this.sourceType &&
          other.sourceId == this.sourceId &&
          other.title == this.title &&
          other.subtitle == this.subtitle &&
          other.imageUrl == this.imageUrl &&
          other.address == this.address &&
          other.targetTime == this.targetTime &&
          other.remindBeforeSeconds == this.remindBeforeSeconds &&
          other.notifyTime == this.notifyTime &&
          other.notificationId == this.notificationId &&
          other.routePath == this.routePath &&
          other.payloadJson == this.payloadJson &&
          other.isEnabled == this.isEnabled &&
          other.isDone == this.isDone &&
          other.createdAt == this.createdAt &&
          other.updatedAt == this.updatedAt);
}

class ReminderTableCompanion extends UpdateCompanion<ReminderTableData> {
  final Value<int> id;
  final Value<String> sourceType;
  final Value<String> sourceId;
  final Value<String> title;
  final Value<String?> subtitle;
  final Value<String?> imageUrl;
  final Value<String?> address;
  final Value<DateTime> targetTime;
  final Value<int> remindBeforeSeconds;
  final Value<DateTime> notifyTime;
  final Value<int> notificationId;
  final Value<String> routePath;
  final Value<String> payloadJson;
  final Value<bool> isEnabled;
  final Value<bool> isDone;
  final Value<DateTime> createdAt;
  final Value<DateTime?> updatedAt;
  const ReminderTableCompanion({
    this.id = const Value.absent(),
    this.sourceType = const Value.absent(),
    this.sourceId = const Value.absent(),
    this.title = const Value.absent(),
    this.subtitle = const Value.absent(),
    this.imageUrl = const Value.absent(),
    this.address = const Value.absent(),
    this.targetTime = const Value.absent(),
    this.remindBeforeSeconds = const Value.absent(),
    this.notifyTime = const Value.absent(),
    this.notificationId = const Value.absent(),
    this.routePath = const Value.absent(),
    this.payloadJson = const Value.absent(),
    this.isEnabled = const Value.absent(),
    this.isDone = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
  });
  ReminderTableCompanion.insert({
    this.id = const Value.absent(),
    required String sourceType,
    required String sourceId,
    required String title,
    this.subtitle = const Value.absent(),
    this.imageUrl = const Value.absent(),
    this.address = const Value.absent(),
    required DateTime targetTime,
    this.remindBeforeSeconds = const Value.absent(),
    required DateTime notifyTime,
    required int notificationId,
    required String routePath,
    required String payloadJson,
    this.isEnabled = const Value.absent(),
    this.isDone = const Value.absent(),
    required DateTime createdAt,
    this.updatedAt = const Value.absent(),
  }) : sourceType = Value(sourceType),
       sourceId = Value(sourceId),
       title = Value(title),
       targetTime = Value(targetTime),
       notifyTime = Value(notifyTime),
       notificationId = Value(notificationId),
       routePath = Value(routePath),
       payloadJson = Value(payloadJson),
       createdAt = Value(createdAt);
  static Insertable<ReminderTableData> custom({
    Expression<int>? id,
    Expression<String>? sourceType,
    Expression<String>? sourceId,
    Expression<String>? title,
    Expression<String>? subtitle,
    Expression<String>? imageUrl,
    Expression<String>? address,
    Expression<DateTime>? targetTime,
    Expression<int>? remindBeforeSeconds,
    Expression<DateTime>? notifyTime,
    Expression<int>? notificationId,
    Expression<String>? routePath,
    Expression<String>? payloadJson,
    Expression<bool>? isEnabled,
    Expression<bool>? isDone,
    Expression<DateTime>? createdAt,
    Expression<DateTime>? updatedAt,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (sourceType != null) 'source_type': sourceType,
      if (sourceId != null) 'source_id': sourceId,
      if (title != null) 'title': title,
      if (subtitle != null) 'subtitle': subtitle,
      if (imageUrl != null) 'image_url': imageUrl,
      if (address != null) 'address': address,
      if (targetTime != null) 'target_time': targetTime,
      if (remindBeforeSeconds != null)
        'remind_before_seconds': remindBeforeSeconds,
      if (notifyTime != null) 'notify_time': notifyTime,
      if (notificationId != null) 'notification_id': notificationId,
      if (routePath != null) 'route_path': routePath,
      if (payloadJson != null) 'payload_json': payloadJson,
      if (isEnabled != null) 'is_enabled': isEnabled,
      if (isDone != null) 'is_done': isDone,
      if (createdAt != null) 'created_at': createdAt,
      if (updatedAt != null) 'updated_at': updatedAt,
    });
  }

  ReminderTableCompanion copyWith({
    Value<int>? id,
    Value<String>? sourceType,
    Value<String>? sourceId,
    Value<String>? title,
    Value<String?>? subtitle,
    Value<String?>? imageUrl,
    Value<String?>? address,
    Value<DateTime>? targetTime,
    Value<int>? remindBeforeSeconds,
    Value<DateTime>? notifyTime,
    Value<int>? notificationId,
    Value<String>? routePath,
    Value<String>? payloadJson,
    Value<bool>? isEnabled,
    Value<bool>? isDone,
    Value<DateTime>? createdAt,
    Value<DateTime?>? updatedAt,
  }) {
    return ReminderTableCompanion(
      id: id ?? this.id,
      sourceType: sourceType ?? this.sourceType,
      sourceId: sourceId ?? this.sourceId,
      title: title ?? this.title,
      subtitle: subtitle ?? this.subtitle,
      imageUrl: imageUrl ?? this.imageUrl,
      address: address ?? this.address,
      targetTime: targetTime ?? this.targetTime,
      remindBeforeSeconds: remindBeforeSeconds ?? this.remindBeforeSeconds,
      notifyTime: notifyTime ?? this.notifyTime,
      notificationId: notificationId ?? this.notificationId,
      routePath: routePath ?? this.routePath,
      payloadJson: payloadJson ?? this.payloadJson,
      isEnabled: isEnabled ?? this.isEnabled,
      isDone: isDone ?? this.isDone,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (sourceType.present) {
      map['source_type'] = Variable<String>(sourceType.value);
    }
    if (sourceId.present) {
      map['source_id'] = Variable<String>(sourceId.value);
    }
    if (title.present) {
      map['title'] = Variable<String>(title.value);
    }
    if (subtitle.present) {
      map['subtitle'] = Variable<String>(subtitle.value);
    }
    if (imageUrl.present) {
      map['image_url'] = Variable<String>(imageUrl.value);
    }
    if (address.present) {
      map['address'] = Variable<String>(address.value);
    }
    if (targetTime.present) {
      map['target_time'] = Variable<DateTime>(targetTime.value);
    }
    if (remindBeforeSeconds.present) {
      map['remind_before_seconds'] = Variable<int>(remindBeforeSeconds.value);
    }
    if (notifyTime.present) {
      map['notify_time'] = Variable<DateTime>(notifyTime.value);
    }
    if (notificationId.present) {
      map['notification_id'] = Variable<int>(notificationId.value);
    }
    if (routePath.present) {
      map['route_path'] = Variable<String>(routePath.value);
    }
    if (payloadJson.present) {
      map['payload_json'] = Variable<String>(payloadJson.value);
    }
    if (isEnabled.present) {
      map['is_enabled'] = Variable<bool>(isEnabled.value);
    }
    if (isDone.present) {
      map['is_done'] = Variable<bool>(isDone.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<DateTime>(updatedAt.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ReminderTableCompanion(')
          ..write('id: $id, ')
          ..write('sourceType: $sourceType, ')
          ..write('sourceId: $sourceId, ')
          ..write('title: $title, ')
          ..write('subtitle: $subtitle, ')
          ..write('imageUrl: $imageUrl, ')
          ..write('address: $address, ')
          ..write('targetTime: $targetTime, ')
          ..write('remindBeforeSeconds: $remindBeforeSeconds, ')
          ..write('notifyTime: $notifyTime, ')
          ..write('notificationId: $notificationId, ')
          ..write('routePath: $routePath, ')
          ..write('payloadJson: $payloadJson, ')
          ..write('isEnabled: $isEnabled, ')
          ..write('isDone: $isDone, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  $AppDatabaseManager get managers => $AppDatabaseManager(this);
  late final $AttractionTableTable attractionTable = $AttractionTableTable(
    this,
  );
  late final $AudioGuideTableTable audioGuideTable = $AudioGuideTableTable(
    this,
  );
  late final $ActivityTableTable activityTable = $ActivityTableTable(this);
  late final $SyncMetaTableTable syncMetaTable = $SyncMetaTableTable(this);
  late final $ReminderTableTable reminderTable = $ReminderTableTable(this);
  late final AttractionDao attractionDao = AttractionDao(this as AppDatabase);
  late final AudioGuideDao audioGuideDao = AudioGuideDao(this as AppDatabase);
  late final ActivityDao activityDao = ActivityDao(this as AppDatabase);
  late final SyncMetaDao syncMetaDao = SyncMetaDao(this as AppDatabase);
  late final ReminderDao reminderDao = ReminderDao(this as AppDatabase);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [
    attractionTable,
    audioGuideTable,
    activityTable,
    syncMetaTable,
    reminderTable,
  ];
}

typedef $$AttractionTableTableCreateCompanionBuilder =
    AttractionTableCompanion Function({
      Value<int> id,
      required String name,
      required String introduction,
      required String openTime,
      required String distric,
      required String address,
      required String tel,
      required String officialSite,
      required String facebook,
      required String ticket,
      required String remind,
      required String url,
      required String modified,
      Value<double?> nlat,
      Value<double?> elong,
      Value<String> categoriesJson,
      Value<String> imagesJson,
      Value<String> friendliesJson,
      required DateTime cachedAt,
    });
typedef $$AttractionTableTableUpdateCompanionBuilder =
    AttractionTableCompanion Function({
      Value<int> id,
      Value<String> name,
      Value<String> introduction,
      Value<String> openTime,
      Value<String> distric,
      Value<String> address,
      Value<String> tel,
      Value<String> officialSite,
      Value<String> facebook,
      Value<String> ticket,
      Value<String> remind,
      Value<String> url,
      Value<String> modified,
      Value<double?> nlat,
      Value<double?> elong,
      Value<String> categoriesJson,
      Value<String> imagesJson,
      Value<String> friendliesJson,
      Value<DateTime> cachedAt,
    });

class $$AttractionTableTableFilterComposer
    extends Composer<_$AppDatabase, $AttractionTableTable> {
  $$AttractionTableTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get introduction => $composableBuilder(
    column: $table.introduction,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get openTime => $composableBuilder(
    column: $table.openTime,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get distric => $composableBuilder(
    column: $table.distric,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get address => $composableBuilder(
    column: $table.address,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get tel => $composableBuilder(
    column: $table.tel,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get officialSite => $composableBuilder(
    column: $table.officialSite,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get facebook => $composableBuilder(
    column: $table.facebook,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get ticket => $composableBuilder(
    column: $table.ticket,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get remind => $composableBuilder(
    column: $table.remind,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get url => $composableBuilder(
    column: $table.url,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get modified => $composableBuilder(
    column: $table.modified,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get nlat => $composableBuilder(
    column: $table.nlat,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get elong => $composableBuilder(
    column: $table.elong,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get categoriesJson => $composableBuilder(
    column: $table.categoriesJson,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get imagesJson => $composableBuilder(
    column: $table.imagesJson,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get friendliesJson => $composableBuilder(
    column: $table.friendliesJson,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get cachedAt => $composableBuilder(
    column: $table.cachedAt,
    builder: (column) => ColumnFilters(column),
  );
}

class $$AttractionTableTableOrderingComposer
    extends Composer<_$AppDatabase, $AttractionTableTable> {
  $$AttractionTableTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get introduction => $composableBuilder(
    column: $table.introduction,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get openTime => $composableBuilder(
    column: $table.openTime,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get distric => $composableBuilder(
    column: $table.distric,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get address => $composableBuilder(
    column: $table.address,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get tel => $composableBuilder(
    column: $table.tel,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get officialSite => $composableBuilder(
    column: $table.officialSite,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get facebook => $composableBuilder(
    column: $table.facebook,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get ticket => $composableBuilder(
    column: $table.ticket,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get remind => $composableBuilder(
    column: $table.remind,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get url => $composableBuilder(
    column: $table.url,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get modified => $composableBuilder(
    column: $table.modified,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get nlat => $composableBuilder(
    column: $table.nlat,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get elong => $composableBuilder(
    column: $table.elong,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get categoriesJson => $composableBuilder(
    column: $table.categoriesJson,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get imagesJson => $composableBuilder(
    column: $table.imagesJson,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get friendliesJson => $composableBuilder(
    column: $table.friendliesJson,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get cachedAt => $composableBuilder(
    column: $table.cachedAt,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$AttractionTableTableAnnotationComposer
    extends Composer<_$AppDatabase, $AttractionTableTable> {
  $$AttractionTableTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  GeneratedColumn<String> get introduction => $composableBuilder(
    column: $table.introduction,
    builder: (column) => column,
  );

  GeneratedColumn<String> get openTime =>
      $composableBuilder(column: $table.openTime, builder: (column) => column);

  GeneratedColumn<String> get distric =>
      $composableBuilder(column: $table.distric, builder: (column) => column);

  GeneratedColumn<String> get address =>
      $composableBuilder(column: $table.address, builder: (column) => column);

  GeneratedColumn<String> get tel =>
      $composableBuilder(column: $table.tel, builder: (column) => column);

  GeneratedColumn<String> get officialSite => $composableBuilder(
    column: $table.officialSite,
    builder: (column) => column,
  );

  GeneratedColumn<String> get facebook =>
      $composableBuilder(column: $table.facebook, builder: (column) => column);

  GeneratedColumn<String> get ticket =>
      $composableBuilder(column: $table.ticket, builder: (column) => column);

  GeneratedColumn<String> get remind =>
      $composableBuilder(column: $table.remind, builder: (column) => column);

  GeneratedColumn<String> get url =>
      $composableBuilder(column: $table.url, builder: (column) => column);

  GeneratedColumn<String> get modified =>
      $composableBuilder(column: $table.modified, builder: (column) => column);

  GeneratedColumn<double> get nlat =>
      $composableBuilder(column: $table.nlat, builder: (column) => column);

  GeneratedColumn<double> get elong =>
      $composableBuilder(column: $table.elong, builder: (column) => column);

  GeneratedColumn<String> get categoriesJson => $composableBuilder(
    column: $table.categoriesJson,
    builder: (column) => column,
  );

  GeneratedColumn<String> get imagesJson => $composableBuilder(
    column: $table.imagesJson,
    builder: (column) => column,
  );

  GeneratedColumn<String> get friendliesJson => $composableBuilder(
    column: $table.friendliesJson,
    builder: (column) => column,
  );

  GeneratedColumn<DateTime> get cachedAt =>
      $composableBuilder(column: $table.cachedAt, builder: (column) => column);
}

class $$AttractionTableTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $AttractionTableTable,
          AttractionTableData,
          $$AttractionTableTableFilterComposer,
          $$AttractionTableTableOrderingComposer,
          $$AttractionTableTableAnnotationComposer,
          $$AttractionTableTableCreateCompanionBuilder,
          $$AttractionTableTableUpdateCompanionBuilder,
          (
            AttractionTableData,
            BaseReferences<
              _$AppDatabase,
              $AttractionTableTable,
              AttractionTableData
            >,
          ),
          AttractionTableData,
          PrefetchHooks Function()
        > {
  $$AttractionTableTableTableManager(
    _$AppDatabase db,
    $AttractionTableTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$AttractionTableTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$AttractionTableTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$AttractionTableTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<String> name = const Value.absent(),
                Value<String> introduction = const Value.absent(),
                Value<String> openTime = const Value.absent(),
                Value<String> distric = const Value.absent(),
                Value<String> address = const Value.absent(),
                Value<String> tel = const Value.absent(),
                Value<String> officialSite = const Value.absent(),
                Value<String> facebook = const Value.absent(),
                Value<String> ticket = const Value.absent(),
                Value<String> remind = const Value.absent(),
                Value<String> url = const Value.absent(),
                Value<String> modified = const Value.absent(),
                Value<double?> nlat = const Value.absent(),
                Value<double?> elong = const Value.absent(),
                Value<String> categoriesJson = const Value.absent(),
                Value<String> imagesJson = const Value.absent(),
                Value<String> friendliesJson = const Value.absent(),
                Value<DateTime> cachedAt = const Value.absent(),
              }) => AttractionTableCompanion(
                id: id,
                name: name,
                introduction: introduction,
                openTime: openTime,
                distric: distric,
                address: address,
                tel: tel,
                officialSite: officialSite,
                facebook: facebook,
                ticket: ticket,
                remind: remind,
                url: url,
                modified: modified,
                nlat: nlat,
                elong: elong,
                categoriesJson: categoriesJson,
                imagesJson: imagesJson,
                friendliesJson: friendliesJson,
                cachedAt: cachedAt,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required String name,
                required String introduction,
                required String openTime,
                required String distric,
                required String address,
                required String tel,
                required String officialSite,
                required String facebook,
                required String ticket,
                required String remind,
                required String url,
                required String modified,
                Value<double?> nlat = const Value.absent(),
                Value<double?> elong = const Value.absent(),
                Value<String> categoriesJson = const Value.absent(),
                Value<String> imagesJson = const Value.absent(),
                Value<String> friendliesJson = const Value.absent(),
                required DateTime cachedAt,
              }) => AttractionTableCompanion.insert(
                id: id,
                name: name,
                introduction: introduction,
                openTime: openTime,
                distric: distric,
                address: address,
                tel: tel,
                officialSite: officialSite,
                facebook: facebook,
                ticket: ticket,
                remind: remind,
                url: url,
                modified: modified,
                nlat: nlat,
                elong: elong,
                categoriesJson: categoriesJson,
                imagesJson: imagesJson,
                friendliesJson: friendliesJson,
                cachedAt: cachedAt,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$AttractionTableTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $AttractionTableTable,
      AttractionTableData,
      $$AttractionTableTableFilterComposer,
      $$AttractionTableTableOrderingComposer,
      $$AttractionTableTableAnnotationComposer,
      $$AttractionTableTableCreateCompanionBuilder,
      $$AttractionTableTableUpdateCompanionBuilder,
      (
        AttractionTableData,
        BaseReferences<
          _$AppDatabase,
          $AttractionTableTable,
          AttractionTableData
        >,
      ),
      AttractionTableData,
      PrefetchHooks Function()
    >;
typedef $$AudioGuideTableTableCreateCompanionBuilder =
    AudioGuideTableCompanion Function({
      Value<int> id,
      required String title,
      required String url,
      required String modified,
      Value<String?> summary,
      Value<String?> fileExt,
      Value<int?> matchedAttractionId,
      Value<bool> isDownloaded,
      Value<String?> localFilePath,
      required DateTime cachedAt,
    });
typedef $$AudioGuideTableTableUpdateCompanionBuilder =
    AudioGuideTableCompanion Function({
      Value<int> id,
      Value<String> title,
      Value<String> url,
      Value<String> modified,
      Value<String?> summary,
      Value<String?> fileExt,
      Value<int?> matchedAttractionId,
      Value<bool> isDownloaded,
      Value<String?> localFilePath,
      Value<DateTime> cachedAt,
    });

class $$AudioGuideTableTableFilterComposer
    extends Composer<_$AppDatabase, $AudioGuideTableTable> {
  $$AudioGuideTableTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get title => $composableBuilder(
    column: $table.title,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get url => $composableBuilder(
    column: $table.url,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get modified => $composableBuilder(
    column: $table.modified,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get summary => $composableBuilder(
    column: $table.summary,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get fileExt => $composableBuilder(
    column: $table.fileExt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get matchedAttractionId => $composableBuilder(
    column: $table.matchedAttractionId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get isDownloaded => $composableBuilder(
    column: $table.isDownloaded,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get localFilePath => $composableBuilder(
    column: $table.localFilePath,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get cachedAt => $composableBuilder(
    column: $table.cachedAt,
    builder: (column) => ColumnFilters(column),
  );
}

class $$AudioGuideTableTableOrderingComposer
    extends Composer<_$AppDatabase, $AudioGuideTableTable> {
  $$AudioGuideTableTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get title => $composableBuilder(
    column: $table.title,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get url => $composableBuilder(
    column: $table.url,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get modified => $composableBuilder(
    column: $table.modified,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get summary => $composableBuilder(
    column: $table.summary,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get fileExt => $composableBuilder(
    column: $table.fileExt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get matchedAttractionId => $composableBuilder(
    column: $table.matchedAttractionId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get isDownloaded => $composableBuilder(
    column: $table.isDownloaded,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get localFilePath => $composableBuilder(
    column: $table.localFilePath,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get cachedAt => $composableBuilder(
    column: $table.cachedAt,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$AudioGuideTableTableAnnotationComposer
    extends Composer<_$AppDatabase, $AudioGuideTableTable> {
  $$AudioGuideTableTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get title =>
      $composableBuilder(column: $table.title, builder: (column) => column);

  GeneratedColumn<String> get url =>
      $composableBuilder(column: $table.url, builder: (column) => column);

  GeneratedColumn<String> get modified =>
      $composableBuilder(column: $table.modified, builder: (column) => column);

  GeneratedColumn<String> get summary =>
      $composableBuilder(column: $table.summary, builder: (column) => column);

  GeneratedColumn<String> get fileExt =>
      $composableBuilder(column: $table.fileExt, builder: (column) => column);

  GeneratedColumn<int> get matchedAttractionId => $composableBuilder(
    column: $table.matchedAttractionId,
    builder: (column) => column,
  );

  GeneratedColumn<bool> get isDownloaded => $composableBuilder(
    column: $table.isDownloaded,
    builder: (column) => column,
  );

  GeneratedColumn<String> get localFilePath => $composableBuilder(
    column: $table.localFilePath,
    builder: (column) => column,
  );

  GeneratedColumn<DateTime> get cachedAt =>
      $composableBuilder(column: $table.cachedAt, builder: (column) => column);
}

class $$AudioGuideTableTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $AudioGuideTableTable,
          AudioGuideTableData,
          $$AudioGuideTableTableFilterComposer,
          $$AudioGuideTableTableOrderingComposer,
          $$AudioGuideTableTableAnnotationComposer,
          $$AudioGuideTableTableCreateCompanionBuilder,
          $$AudioGuideTableTableUpdateCompanionBuilder,
          (
            AudioGuideTableData,
            BaseReferences<
              _$AppDatabase,
              $AudioGuideTableTable,
              AudioGuideTableData
            >,
          ),
          AudioGuideTableData,
          PrefetchHooks Function()
        > {
  $$AudioGuideTableTableTableManager(
    _$AppDatabase db,
    $AudioGuideTableTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$AudioGuideTableTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$AudioGuideTableTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$AudioGuideTableTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<String> title = const Value.absent(),
                Value<String> url = const Value.absent(),
                Value<String> modified = const Value.absent(),
                Value<String?> summary = const Value.absent(),
                Value<String?> fileExt = const Value.absent(),
                Value<int?> matchedAttractionId = const Value.absent(),
                Value<bool> isDownloaded = const Value.absent(),
                Value<String?> localFilePath = const Value.absent(),
                Value<DateTime> cachedAt = const Value.absent(),
              }) => AudioGuideTableCompanion(
                id: id,
                title: title,
                url: url,
                modified: modified,
                summary: summary,
                fileExt: fileExt,
                matchedAttractionId: matchedAttractionId,
                isDownloaded: isDownloaded,
                localFilePath: localFilePath,
                cachedAt: cachedAt,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required String title,
                required String url,
                required String modified,
                Value<String?> summary = const Value.absent(),
                Value<String?> fileExt = const Value.absent(),
                Value<int?> matchedAttractionId = const Value.absent(),
                Value<bool> isDownloaded = const Value.absent(),
                Value<String?> localFilePath = const Value.absent(),
                required DateTime cachedAt,
              }) => AudioGuideTableCompanion.insert(
                id: id,
                title: title,
                url: url,
                modified: modified,
                summary: summary,
                fileExt: fileExt,
                matchedAttractionId: matchedAttractionId,
                isDownloaded: isDownloaded,
                localFilePath: localFilePath,
                cachedAt: cachedAt,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$AudioGuideTableTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $AudioGuideTableTable,
      AudioGuideTableData,
      $$AudioGuideTableTableFilterComposer,
      $$AudioGuideTableTableOrderingComposer,
      $$AudioGuideTableTableAnnotationComposer,
      $$AudioGuideTableTableCreateCompanionBuilder,
      $$AudioGuideTableTableUpdateCompanionBuilder,
      (
        AudioGuideTableData,
        BaseReferences<
          _$AppDatabase,
          $AudioGuideTableTable,
          AudioGuideTableData
        >,
      ),
      AudioGuideTableData,
      PrefetchHooks Function()
    >;
typedef $$ActivityTableTableCreateCompanionBuilder =
    ActivityTableCompanion Function({
      Value<int> id,
      required String title,
      required String description,
      required String begin,
      required String end,
      required String posted,
      required String modified,
      required String url,
      required String address,
      required String distric,
      required String nlat,
      required String elong,
      required String organizer,
      required String coRganizer,
      required String contact,
      required String tel,
      required String ticket,
      required String traffic,
      required String parking,
      Value<String> linksJson,
      required DateTime cachedAt,
    });
typedef $$ActivityTableTableUpdateCompanionBuilder =
    ActivityTableCompanion Function({
      Value<int> id,
      Value<String> title,
      Value<String> description,
      Value<String> begin,
      Value<String> end,
      Value<String> posted,
      Value<String> modified,
      Value<String> url,
      Value<String> address,
      Value<String> distric,
      Value<String> nlat,
      Value<String> elong,
      Value<String> organizer,
      Value<String> coRganizer,
      Value<String> contact,
      Value<String> tel,
      Value<String> ticket,
      Value<String> traffic,
      Value<String> parking,
      Value<String> linksJson,
      Value<DateTime> cachedAt,
    });

class $$ActivityTableTableFilterComposer
    extends Composer<_$AppDatabase, $ActivityTableTable> {
  $$ActivityTableTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get title => $composableBuilder(
    column: $table.title,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get description => $composableBuilder(
    column: $table.description,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get begin => $composableBuilder(
    column: $table.begin,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get end => $composableBuilder(
    column: $table.end,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get posted => $composableBuilder(
    column: $table.posted,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get modified => $composableBuilder(
    column: $table.modified,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get url => $composableBuilder(
    column: $table.url,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get address => $composableBuilder(
    column: $table.address,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get distric => $composableBuilder(
    column: $table.distric,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get nlat => $composableBuilder(
    column: $table.nlat,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get elong => $composableBuilder(
    column: $table.elong,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get organizer => $composableBuilder(
    column: $table.organizer,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get coRganizer => $composableBuilder(
    column: $table.coRganizer,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get contact => $composableBuilder(
    column: $table.contact,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get tel => $composableBuilder(
    column: $table.tel,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get ticket => $composableBuilder(
    column: $table.ticket,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get traffic => $composableBuilder(
    column: $table.traffic,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get parking => $composableBuilder(
    column: $table.parking,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get linksJson => $composableBuilder(
    column: $table.linksJson,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get cachedAt => $composableBuilder(
    column: $table.cachedAt,
    builder: (column) => ColumnFilters(column),
  );
}

class $$ActivityTableTableOrderingComposer
    extends Composer<_$AppDatabase, $ActivityTableTable> {
  $$ActivityTableTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get title => $composableBuilder(
    column: $table.title,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get description => $composableBuilder(
    column: $table.description,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get begin => $composableBuilder(
    column: $table.begin,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get end => $composableBuilder(
    column: $table.end,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get posted => $composableBuilder(
    column: $table.posted,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get modified => $composableBuilder(
    column: $table.modified,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get url => $composableBuilder(
    column: $table.url,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get address => $composableBuilder(
    column: $table.address,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get distric => $composableBuilder(
    column: $table.distric,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get nlat => $composableBuilder(
    column: $table.nlat,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get elong => $composableBuilder(
    column: $table.elong,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get organizer => $composableBuilder(
    column: $table.organizer,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get coRganizer => $composableBuilder(
    column: $table.coRganizer,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get contact => $composableBuilder(
    column: $table.contact,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get tel => $composableBuilder(
    column: $table.tel,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get ticket => $composableBuilder(
    column: $table.ticket,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get traffic => $composableBuilder(
    column: $table.traffic,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get parking => $composableBuilder(
    column: $table.parking,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get linksJson => $composableBuilder(
    column: $table.linksJson,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get cachedAt => $composableBuilder(
    column: $table.cachedAt,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$ActivityTableTableAnnotationComposer
    extends Composer<_$AppDatabase, $ActivityTableTable> {
  $$ActivityTableTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get title =>
      $composableBuilder(column: $table.title, builder: (column) => column);

  GeneratedColumn<String> get description => $composableBuilder(
    column: $table.description,
    builder: (column) => column,
  );

  GeneratedColumn<String> get begin =>
      $composableBuilder(column: $table.begin, builder: (column) => column);

  GeneratedColumn<String> get end =>
      $composableBuilder(column: $table.end, builder: (column) => column);

  GeneratedColumn<String> get posted =>
      $composableBuilder(column: $table.posted, builder: (column) => column);

  GeneratedColumn<String> get modified =>
      $composableBuilder(column: $table.modified, builder: (column) => column);

  GeneratedColumn<String> get url =>
      $composableBuilder(column: $table.url, builder: (column) => column);

  GeneratedColumn<String> get address =>
      $composableBuilder(column: $table.address, builder: (column) => column);

  GeneratedColumn<String> get distric =>
      $composableBuilder(column: $table.distric, builder: (column) => column);

  GeneratedColumn<String> get nlat =>
      $composableBuilder(column: $table.nlat, builder: (column) => column);

  GeneratedColumn<String> get elong =>
      $composableBuilder(column: $table.elong, builder: (column) => column);

  GeneratedColumn<String> get organizer =>
      $composableBuilder(column: $table.organizer, builder: (column) => column);

  GeneratedColumn<String> get coRganizer => $composableBuilder(
    column: $table.coRganizer,
    builder: (column) => column,
  );

  GeneratedColumn<String> get contact =>
      $composableBuilder(column: $table.contact, builder: (column) => column);

  GeneratedColumn<String> get tel =>
      $composableBuilder(column: $table.tel, builder: (column) => column);

  GeneratedColumn<String> get ticket =>
      $composableBuilder(column: $table.ticket, builder: (column) => column);

  GeneratedColumn<String> get traffic =>
      $composableBuilder(column: $table.traffic, builder: (column) => column);

  GeneratedColumn<String> get parking =>
      $composableBuilder(column: $table.parking, builder: (column) => column);

  GeneratedColumn<String> get linksJson =>
      $composableBuilder(column: $table.linksJson, builder: (column) => column);

  GeneratedColumn<DateTime> get cachedAt =>
      $composableBuilder(column: $table.cachedAt, builder: (column) => column);
}

class $$ActivityTableTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $ActivityTableTable,
          ActivityTableData,
          $$ActivityTableTableFilterComposer,
          $$ActivityTableTableOrderingComposer,
          $$ActivityTableTableAnnotationComposer,
          $$ActivityTableTableCreateCompanionBuilder,
          $$ActivityTableTableUpdateCompanionBuilder,
          (
            ActivityTableData,
            BaseReferences<
              _$AppDatabase,
              $ActivityTableTable,
              ActivityTableData
            >,
          ),
          ActivityTableData,
          PrefetchHooks Function()
        > {
  $$ActivityTableTableTableManager(_$AppDatabase db, $ActivityTableTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$ActivityTableTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$ActivityTableTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$ActivityTableTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<String> title = const Value.absent(),
                Value<String> description = const Value.absent(),
                Value<String> begin = const Value.absent(),
                Value<String> end = const Value.absent(),
                Value<String> posted = const Value.absent(),
                Value<String> modified = const Value.absent(),
                Value<String> url = const Value.absent(),
                Value<String> address = const Value.absent(),
                Value<String> distric = const Value.absent(),
                Value<String> nlat = const Value.absent(),
                Value<String> elong = const Value.absent(),
                Value<String> organizer = const Value.absent(),
                Value<String> coRganizer = const Value.absent(),
                Value<String> contact = const Value.absent(),
                Value<String> tel = const Value.absent(),
                Value<String> ticket = const Value.absent(),
                Value<String> traffic = const Value.absent(),
                Value<String> parking = const Value.absent(),
                Value<String> linksJson = const Value.absent(),
                Value<DateTime> cachedAt = const Value.absent(),
              }) => ActivityTableCompanion(
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
                linksJson: linksJson,
                cachedAt: cachedAt,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required String title,
                required String description,
                required String begin,
                required String end,
                required String posted,
                required String modified,
                required String url,
                required String address,
                required String distric,
                required String nlat,
                required String elong,
                required String organizer,
                required String coRganizer,
                required String contact,
                required String tel,
                required String ticket,
                required String traffic,
                required String parking,
                Value<String> linksJson = const Value.absent(),
                required DateTime cachedAt,
              }) => ActivityTableCompanion.insert(
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
                linksJson: linksJson,
                cachedAt: cachedAt,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$ActivityTableTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $ActivityTableTable,
      ActivityTableData,
      $$ActivityTableTableFilterComposer,
      $$ActivityTableTableOrderingComposer,
      $$ActivityTableTableAnnotationComposer,
      $$ActivityTableTableCreateCompanionBuilder,
      $$ActivityTableTableUpdateCompanionBuilder,
      (
        ActivityTableData,
        BaseReferences<_$AppDatabase, $ActivityTableTable, ActivityTableData>,
      ),
      ActivityTableData,
      PrefetchHooks Function()
    >;
typedef $$SyncMetaTableTableCreateCompanionBuilder =
    SyncMetaTableCompanion Function({
      required String key,
      required DateTime lastSyncedAt,
      Value<int> rowid,
    });
typedef $$SyncMetaTableTableUpdateCompanionBuilder =
    SyncMetaTableCompanion Function({
      Value<String> key,
      Value<DateTime> lastSyncedAt,
      Value<int> rowid,
    });

class $$SyncMetaTableTableFilterComposer
    extends Composer<_$AppDatabase, $SyncMetaTableTable> {
  $$SyncMetaTableTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get key => $composableBuilder(
    column: $table.key,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get lastSyncedAt => $composableBuilder(
    column: $table.lastSyncedAt,
    builder: (column) => ColumnFilters(column),
  );
}

class $$SyncMetaTableTableOrderingComposer
    extends Composer<_$AppDatabase, $SyncMetaTableTable> {
  $$SyncMetaTableTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get key => $composableBuilder(
    column: $table.key,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get lastSyncedAt => $composableBuilder(
    column: $table.lastSyncedAt,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$SyncMetaTableTableAnnotationComposer
    extends Composer<_$AppDatabase, $SyncMetaTableTable> {
  $$SyncMetaTableTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get key =>
      $composableBuilder(column: $table.key, builder: (column) => column);

  GeneratedColumn<DateTime> get lastSyncedAt => $composableBuilder(
    column: $table.lastSyncedAt,
    builder: (column) => column,
  );
}

class $$SyncMetaTableTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $SyncMetaTableTable,
          SyncMetaTableData,
          $$SyncMetaTableTableFilterComposer,
          $$SyncMetaTableTableOrderingComposer,
          $$SyncMetaTableTableAnnotationComposer,
          $$SyncMetaTableTableCreateCompanionBuilder,
          $$SyncMetaTableTableUpdateCompanionBuilder,
          (
            SyncMetaTableData,
            BaseReferences<
              _$AppDatabase,
              $SyncMetaTableTable,
              SyncMetaTableData
            >,
          ),
          SyncMetaTableData,
          PrefetchHooks Function()
        > {
  $$SyncMetaTableTableTableManager(_$AppDatabase db, $SyncMetaTableTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$SyncMetaTableTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$SyncMetaTableTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$SyncMetaTableTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> key = const Value.absent(),
                Value<DateTime> lastSyncedAt = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => SyncMetaTableCompanion(
                key: key,
                lastSyncedAt: lastSyncedAt,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String key,
                required DateTime lastSyncedAt,
                Value<int> rowid = const Value.absent(),
              }) => SyncMetaTableCompanion.insert(
                key: key,
                lastSyncedAt: lastSyncedAt,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$SyncMetaTableTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $SyncMetaTableTable,
      SyncMetaTableData,
      $$SyncMetaTableTableFilterComposer,
      $$SyncMetaTableTableOrderingComposer,
      $$SyncMetaTableTableAnnotationComposer,
      $$SyncMetaTableTableCreateCompanionBuilder,
      $$SyncMetaTableTableUpdateCompanionBuilder,
      (
        SyncMetaTableData,
        BaseReferences<_$AppDatabase, $SyncMetaTableTable, SyncMetaTableData>,
      ),
      SyncMetaTableData,
      PrefetchHooks Function()
    >;
typedef $$ReminderTableTableCreateCompanionBuilder =
    ReminderTableCompanion Function({
      Value<int> id,
      required String sourceType,
      required String sourceId,
      required String title,
      Value<String?> subtitle,
      Value<String?> imageUrl,
      Value<String?> address,
      required DateTime targetTime,
      Value<int> remindBeforeSeconds,
      required DateTime notifyTime,
      required int notificationId,
      required String routePath,
      required String payloadJson,
      Value<bool> isEnabled,
      Value<bool> isDone,
      required DateTime createdAt,
      Value<DateTime?> updatedAt,
    });
typedef $$ReminderTableTableUpdateCompanionBuilder =
    ReminderTableCompanion Function({
      Value<int> id,
      Value<String> sourceType,
      Value<String> sourceId,
      Value<String> title,
      Value<String?> subtitle,
      Value<String?> imageUrl,
      Value<String?> address,
      Value<DateTime> targetTime,
      Value<int> remindBeforeSeconds,
      Value<DateTime> notifyTime,
      Value<int> notificationId,
      Value<String> routePath,
      Value<String> payloadJson,
      Value<bool> isEnabled,
      Value<bool> isDone,
      Value<DateTime> createdAt,
      Value<DateTime?> updatedAt,
    });

class $$ReminderTableTableFilterComposer
    extends Composer<_$AppDatabase, $ReminderTableTable> {
  $$ReminderTableTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get sourceType => $composableBuilder(
    column: $table.sourceType,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get sourceId => $composableBuilder(
    column: $table.sourceId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get title => $composableBuilder(
    column: $table.title,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get subtitle => $composableBuilder(
    column: $table.subtitle,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get imageUrl => $composableBuilder(
    column: $table.imageUrl,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get address => $composableBuilder(
    column: $table.address,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get targetTime => $composableBuilder(
    column: $table.targetTime,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get remindBeforeSeconds => $composableBuilder(
    column: $table.remindBeforeSeconds,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get notifyTime => $composableBuilder(
    column: $table.notifyTime,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get notificationId => $composableBuilder(
    column: $table.notificationId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get routePath => $composableBuilder(
    column: $table.routePath,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get payloadJson => $composableBuilder(
    column: $table.payloadJson,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get isEnabled => $composableBuilder(
    column: $table.isEnabled,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get isDone => $composableBuilder(
    column: $table.isDone,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get updatedAt => $composableBuilder(
    column: $table.updatedAt,
    builder: (column) => ColumnFilters(column),
  );
}

class $$ReminderTableTableOrderingComposer
    extends Composer<_$AppDatabase, $ReminderTableTable> {
  $$ReminderTableTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get sourceType => $composableBuilder(
    column: $table.sourceType,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get sourceId => $composableBuilder(
    column: $table.sourceId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get title => $composableBuilder(
    column: $table.title,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get subtitle => $composableBuilder(
    column: $table.subtitle,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get imageUrl => $composableBuilder(
    column: $table.imageUrl,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get address => $composableBuilder(
    column: $table.address,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get targetTime => $composableBuilder(
    column: $table.targetTime,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get remindBeforeSeconds => $composableBuilder(
    column: $table.remindBeforeSeconds,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get notifyTime => $composableBuilder(
    column: $table.notifyTime,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get notificationId => $composableBuilder(
    column: $table.notificationId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get routePath => $composableBuilder(
    column: $table.routePath,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get payloadJson => $composableBuilder(
    column: $table.payloadJson,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get isEnabled => $composableBuilder(
    column: $table.isEnabled,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get isDone => $composableBuilder(
    column: $table.isDone,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get updatedAt => $composableBuilder(
    column: $table.updatedAt,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$ReminderTableTableAnnotationComposer
    extends Composer<_$AppDatabase, $ReminderTableTable> {
  $$ReminderTableTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get sourceType => $composableBuilder(
    column: $table.sourceType,
    builder: (column) => column,
  );

  GeneratedColumn<String> get sourceId =>
      $composableBuilder(column: $table.sourceId, builder: (column) => column);

  GeneratedColumn<String> get title =>
      $composableBuilder(column: $table.title, builder: (column) => column);

  GeneratedColumn<String> get subtitle =>
      $composableBuilder(column: $table.subtitle, builder: (column) => column);

  GeneratedColumn<String> get imageUrl =>
      $composableBuilder(column: $table.imageUrl, builder: (column) => column);

  GeneratedColumn<String> get address =>
      $composableBuilder(column: $table.address, builder: (column) => column);

  GeneratedColumn<DateTime> get targetTime => $composableBuilder(
    column: $table.targetTime,
    builder: (column) => column,
  );

  GeneratedColumn<int> get remindBeforeSeconds => $composableBuilder(
    column: $table.remindBeforeSeconds,
    builder: (column) => column,
  );

  GeneratedColumn<DateTime> get notifyTime => $composableBuilder(
    column: $table.notifyTime,
    builder: (column) => column,
  );

  GeneratedColumn<int> get notificationId => $composableBuilder(
    column: $table.notificationId,
    builder: (column) => column,
  );

  GeneratedColumn<String> get routePath =>
      $composableBuilder(column: $table.routePath, builder: (column) => column);

  GeneratedColumn<String> get payloadJson => $composableBuilder(
    column: $table.payloadJson,
    builder: (column) => column,
  );

  GeneratedColumn<bool> get isEnabled =>
      $composableBuilder(column: $table.isEnabled, builder: (column) => column);

  GeneratedColumn<bool> get isDone =>
      $composableBuilder(column: $table.isDone, builder: (column) => column);

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  GeneratedColumn<DateTime> get updatedAt =>
      $composableBuilder(column: $table.updatedAt, builder: (column) => column);
}

class $$ReminderTableTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $ReminderTableTable,
          ReminderTableData,
          $$ReminderTableTableFilterComposer,
          $$ReminderTableTableOrderingComposer,
          $$ReminderTableTableAnnotationComposer,
          $$ReminderTableTableCreateCompanionBuilder,
          $$ReminderTableTableUpdateCompanionBuilder,
          (
            ReminderTableData,
            BaseReferences<
              _$AppDatabase,
              $ReminderTableTable,
              ReminderTableData
            >,
          ),
          ReminderTableData,
          PrefetchHooks Function()
        > {
  $$ReminderTableTableTableManager(_$AppDatabase db, $ReminderTableTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$ReminderTableTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$ReminderTableTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$ReminderTableTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<String> sourceType = const Value.absent(),
                Value<String> sourceId = const Value.absent(),
                Value<String> title = const Value.absent(),
                Value<String?> subtitle = const Value.absent(),
                Value<String?> imageUrl = const Value.absent(),
                Value<String?> address = const Value.absent(),
                Value<DateTime> targetTime = const Value.absent(),
                Value<int> remindBeforeSeconds = const Value.absent(),
                Value<DateTime> notifyTime = const Value.absent(),
                Value<int> notificationId = const Value.absent(),
                Value<String> routePath = const Value.absent(),
                Value<String> payloadJson = const Value.absent(),
                Value<bool> isEnabled = const Value.absent(),
                Value<bool> isDone = const Value.absent(),
                Value<DateTime> createdAt = const Value.absent(),
                Value<DateTime?> updatedAt = const Value.absent(),
              }) => ReminderTableCompanion(
                id: id,
                sourceType: sourceType,
                sourceId: sourceId,
                title: title,
                subtitle: subtitle,
                imageUrl: imageUrl,
                address: address,
                targetTime: targetTime,
                remindBeforeSeconds: remindBeforeSeconds,
                notifyTime: notifyTime,
                notificationId: notificationId,
                routePath: routePath,
                payloadJson: payloadJson,
                isEnabled: isEnabled,
                isDone: isDone,
                createdAt: createdAt,
                updatedAt: updatedAt,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required String sourceType,
                required String sourceId,
                required String title,
                Value<String?> subtitle = const Value.absent(),
                Value<String?> imageUrl = const Value.absent(),
                Value<String?> address = const Value.absent(),
                required DateTime targetTime,
                Value<int> remindBeforeSeconds = const Value.absent(),
                required DateTime notifyTime,
                required int notificationId,
                required String routePath,
                required String payloadJson,
                Value<bool> isEnabled = const Value.absent(),
                Value<bool> isDone = const Value.absent(),
                required DateTime createdAt,
                Value<DateTime?> updatedAt = const Value.absent(),
              }) => ReminderTableCompanion.insert(
                id: id,
                sourceType: sourceType,
                sourceId: sourceId,
                title: title,
                subtitle: subtitle,
                imageUrl: imageUrl,
                address: address,
                targetTime: targetTime,
                remindBeforeSeconds: remindBeforeSeconds,
                notifyTime: notifyTime,
                notificationId: notificationId,
                routePath: routePath,
                payloadJson: payloadJson,
                isEnabled: isEnabled,
                isDone: isDone,
                createdAt: createdAt,
                updatedAt: updatedAt,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$ReminderTableTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $ReminderTableTable,
      ReminderTableData,
      $$ReminderTableTableFilterComposer,
      $$ReminderTableTableOrderingComposer,
      $$ReminderTableTableAnnotationComposer,
      $$ReminderTableTableCreateCompanionBuilder,
      $$ReminderTableTableUpdateCompanionBuilder,
      (
        ReminderTableData,
        BaseReferences<_$AppDatabase, $ReminderTableTable, ReminderTableData>,
      ),
      ReminderTableData,
      PrefetchHooks Function()
    >;

class $AppDatabaseManager {
  final _$AppDatabase _db;
  $AppDatabaseManager(this._db);
  $$AttractionTableTableTableManager get attractionTable =>
      $$AttractionTableTableTableManager(_db, _db.attractionTable);
  $$AudioGuideTableTableTableManager get audioGuideTable =>
      $$AudioGuideTableTableTableManager(_db, _db.audioGuideTable);
  $$ActivityTableTableTableManager get activityTable =>
      $$ActivityTableTableTableManager(_db, _db.activityTable);
  $$SyncMetaTableTableTableManager get syncMetaTable =>
      $$SyncMetaTableTableTableManager(_db, _db.syncMetaTable);
  $$ReminderTableTableTableManager get reminderTable =>
      $$ReminderTableTableTableManager(_db, _db.reminderTable);
}
