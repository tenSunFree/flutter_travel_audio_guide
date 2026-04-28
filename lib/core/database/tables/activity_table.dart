import 'package:drift/drift.dart';

class ActivityTable extends Table {
  IntColumn get id => integer()();

  TextColumn get title => text()();

  TextColumn get description => text()();

  TextColumn get begin => text()();

  TextColumn get end => text()();

  TextColumn get posted => text()();

  TextColumn get modified => text()();

  TextColumn get url => text()();

  TextColumn get address => text()();

  TextColumn get distric => text()();

  TextColumn get nlat => text()();

  TextColumn get elong => text()();

  TextColumn get organizer => text()();

  TextColumn get coRganizer => text()();

  TextColumn get contact => text()();

  TextColumn get tel => text()();

  TextColumn get ticket => text()();

  TextColumn get traffic => text()();

  TextColumn get parking => text()();

  TextColumn get linksJson => text().withDefault(const Constant('[]'))();

  DateTimeColumn get cachedAt => dateTime()();

  @override
  Set<Column> get primaryKey => {id};
}
