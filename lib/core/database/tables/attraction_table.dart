import 'package:drift/drift.dart';

class AttractionTable extends Table {
  IntColumn get id => integer()();

  TextColumn get name => text()();

  TextColumn get introduction => text()();

  TextColumn get openTime => text()();

  TextColumn get distric => text()();

  TextColumn get address => text()();

  TextColumn get tel => text()();

  TextColumn get officialSite => text()();

  TextColumn get facebook => text()();

  TextColumn get ticket => text()();

  TextColumn get remind => text()();

  TextColumn get url => text()();

  TextColumn get modified => text()();

  RealColumn get nlat => real().nullable()();

  RealColumn get elong => real().nullable()();

  TextColumn get categoriesJson => text().withDefault(const Constant('[]'))();

  TextColumn get imagesJson => text().withDefault(const Constant('[]'))();

  TextColumn get friendliesJson => text().withDefault(const Constant('[]'))();

  DateTimeColumn get cachedAt => dateTime()();

  @override
  Set<Column> get primaryKey => {id};
}
