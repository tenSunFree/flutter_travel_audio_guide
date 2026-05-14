import 'package:drift/drift.dart';

class ReminderTable extends Table {
  IntColumn get id => integer().autoIncrement()();

  TextColumn get sourceType => text()();

  TextColumn get sourceId => text()();

  TextColumn get title => text()();

  TextColumn get subtitle => text().nullable()();

  TextColumn get imageUrl => text().nullable()();

  TextColumn get address => text().nullable()();

  DateTimeColumn get targetTime => dateTime()();

  IntColumn get remindBeforeSeconds =>
      integer().withDefault(const Constant(0))();

  DateTimeColumn get notifyTime => dateTime()();

  IntColumn get notificationId => integer()();

  TextColumn get routePath => text()();

  TextColumn get payloadJson => text()();

  BoolColumn get isEnabled => boolean().withDefault(const Constant(true))();

  BoolColumn get isDone => boolean().withDefault(const Constant(false))();

  DateTimeColumn get createdAt => dateTime()();

  DateTimeColumn get updatedAt => dateTime().nullable()();
}
