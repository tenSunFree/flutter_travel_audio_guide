import 'package:drift/drift.dart';

/// Records the last synchronization time for each data type
/// storing it in the database for better consistency than SharedPreferences.
class SyncMetaTable extends Table {
  TextColumn get key => text()();

  DateTimeColumn get lastSyncedAt => dateTime()();

  @override
  Set<Column> get primaryKey => {key};
}
