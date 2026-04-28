// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'audio_guide_dao.dart';

// ignore_for_file: type=lint
mixin _$AudioGuideDaoMixin on DatabaseAccessor<AppDatabase> {
  $AudioGuideTableTable get audioGuideTable => attachedDatabase.audioGuideTable;
  AudioGuideDaoManager get managers => AudioGuideDaoManager(this);
}

class AudioGuideDaoManager {
  final _$AudioGuideDaoMixin _db;
  AudioGuideDaoManager(this._db);
  $$AudioGuideTableTableTableManager get audioGuideTable =>
      $$AudioGuideTableTableTableManager(
        _db.attachedDatabase,
        _db.audioGuideTable,
      );
}
