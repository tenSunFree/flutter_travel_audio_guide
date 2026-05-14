import 'package:drift/drift.dart';
import 'package:drift_flutter/drift_flutter.dart';
import 'tables/attraction_table.dart';
import 'tables/audio_guide_table.dart';
import 'tables/activity_table.dart';
import 'tables/sync_meta_table.dart';
import 'daos/attraction_dao.dart';
import 'daos/audio_guide_dao.dart';
import 'daos/activity_dao.dart';
import 'daos/sync_meta_dao.dart';
import 'tables/reminder_table.dart';
import 'daos/reminder_dao.dart';

part 'app_database.g.dart';

@DriftDatabase(
  tables: [
    AttractionTable,
    AudioGuideTable,
    ActivityTable,
    SyncMetaTable,
    ReminderTable,
  ],
  daos: [AttractionDao, AudioGuideDao, ActivityDao, SyncMetaDao, ReminderDao],
)
class AppDatabase extends _$AppDatabase {
  AppDatabase() : super(driftDatabase(name: 'travel_guide_db'));

  AppDatabase.forTesting(super.executor);

  @override
  int get schemaVersion => 2;
}
