import 'package:drift/drift.dart';

class AudioGuideTable extends Table {
  IntColumn get id => integer()();

  TextColumn get title => text()();

  TextColumn get url => text()();

  TextColumn get modified => text()();

  TextColumn get summary => text().nullable()();

  TextColumn get fileExt => text().nullable()();

  IntColumn get matchedAttractionId => integer().nullable()();

  BoolColumn get isDownloaded => boolean().withDefault(const Constant(false))();

  TextColumn get localFilePath => text().nullable()();

  DateTimeColumn get cachedAt => dateTime()();

  @override
  Set<Column> get primaryKey => {id};
}
