// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'attraction_dao.dart';

// ignore_for_file: type=lint
mixin _$AttractionDaoMixin on DatabaseAccessor<AppDatabase> {
  $AttractionTableTable get attractionTable => attachedDatabase.attractionTable;
  AttractionDaoManager get managers => AttractionDaoManager(this);
}

class AttractionDaoManager {
  final _$AttractionDaoMixin _db;
  AttractionDaoManager(this._db);
  $$AttractionTableTableTableManager get attractionTable =>
      $$AttractionTableTableTableManager(
        _db.attachedDatabase,
        _db.attractionTable,
      );
}
