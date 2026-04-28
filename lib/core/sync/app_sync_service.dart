import '../../features/activity/data/models/activity_model.dart';
import '../../features/attraction/data/models/attraction_model.dart';
import '../../features/audio_guide/data/models/audio_guide_model.dart';
import '../database/app_database.dart';
import '../constants/api_constants.dart';
import '../utils/app_logger.dart';
import '../../features/attraction/data/datasources/attraction_remote_data_source.dart';
import '../../features/audio_guide/data/datasources/audio_guide_remote_data_source.dart';
import '../../features/activity/data/datasources/activity_remote_data_source.dart';

enum SyncTarget { attractions, audioGuides, activities }

class AppSyncService {
  const AppSyncService({
    required this.db,
    required this.attractionRemote,
    required this.audioGuideRemote,
    required this.activityRemote,
  });

  final AppDatabase db;
  final AttractionRemoteDataSource attractionRemote;
  final AudioGuideRemoteDataSource audioGuideRemote;
  final ActivityRemoteDataSource activityRemote;

  static const _attractionKey = 'sync_attractions';
  static const _audioGuideKey = 'sync_audio_guides';
  static const _activityKey = 'sync_activities';

  static const _attractionTtl = Duration(hours: 3);
  static const _audioGuideTtl = Duration(hours: 3);
  static const _activityTtl = Duration(hours: 1);

  Future<void> syncAllIfNeeded() async {
    // Attraction must be matched with the AudioGuide before it can be used.
    await _syncIfNeeded(
      key: _attractionKey,
      ttl: _attractionTtl,
      sync: _syncAttractions,
    );
    await _syncIfNeeded(
      key: _audioGuideKey,
      ttl: _audioGuideTtl,
      sync: _syncAudioGuides,
    );
    await _syncIfNeeded(
      key: _activityKey,
      ttl: _activityTtl,
      sync: _syncActivities,
    );
  }

  Future<void> _syncIfNeeded({
    required String key,
    required Duration ttl,
    required Future<void> Function() sync,
  }) async {
    final lastSyncedAt = await db.syncMetaDao.getLastSyncedAt(key);
    final needSync =
        lastSyncedAt == null || DateTime.now().difference(lastSyncedAt) >= ttl;
    if (!needSync) return;
    try {
      await sync();
      await db.syncMetaDao.saveLastSyncedAt(key);
    } catch (e, st) {
      AppLogger.error('[$key] sync failed', exception: e, stackTrace: st);
      // Background synchronization failure does not affect the UI
    }
  }

  Future<void> _syncAttractions() async {
    // Page Breakdown
    final allRemote = await _fetchAllPages<AttractionModel, dynamic>(
      fetch: (page) => attractionRemote.getAttractions(
        lang: ApiConstants.defaultLang,
        page: page,
      ),
    );
    // Compare with modified; only upsert has changed.
    final localRows = await db.attractionDao.getAll();
    final localModifiedMap = {for (final r in localRows) r.id: r.modified};
    final changed = allRemote
        .where(
          (m) =>
              localModifiedMap[m.id] == null ||
              localModifiedMap[m.id] != m.modified,
        )
        .toList();
    if (changed.isNotEmpty) {
      await db.attractionDao.upsertAll(changed);
      AppLogger.info('Attractions: ${changed.length} updated');
    }
  }

  Future<void> _syncAudioGuides() async {
    final allRemote = await _fetchAllPages<AudioGuideModel, dynamic>(
      fetch: (page) => audioGuideRemote.getAudioGuides(
        lang: ApiConstants.defaultLang,
        page: page,
      ),
    );
    final localAttractions = await db.attractionDao.getAll();
    final localRows = await db.audioGuideDao.getAll();
    final localMap = {for (final r in localRows) r.id: r};
    final companions = <AudioGuideTableCompanion>[];
    for (final m in allRemote) {
      final local = localMap[m.id];
      final isNew = local == null;
      final isChanged = local?.modified != m.modified;
      if (isNew || isChanged) {
        final matchedId = _matchAttractionId(
          audioTitle: m.title,
          attractions: localAttractions,
        );
        companions.add(
          db.audioGuideDao.toCompanion(
            m,
            matchedAttractionId: matchedId,
            isDownloaded: local?.isDownloaded ?? false,
            localFilePath: local?.localFilePath,
          ),
        );
      }
    }
    if (companions.isNotEmpty) {
      await db.audioGuideDao.upsertAll(companions);
      AppLogger.info('AudioGuides: ${companions.length} updated');
    }
  }

  Future<void> _syncActivities() async {
    final allRemote = await _fetchAllPages<ActivityModel, dynamic>(
      fetch: (page) => activityRemote.getActivities(
        lang: ApiConstants.defaultLang,
        page: page,
      ),
    );
    final localRows = await db.activityDao.getAll();
    final localModifiedMap = {for (final r in localRows) r.id: r.modified};
    final changed = allRemote
        .where(
          (m) =>
              localModifiedMap[m.id] == null ||
              localModifiedMap[m.id] != m.modified,
        )
        .toList();
    if (changed.isNotEmpty) {
      await db.activityDao.upsertAll(changed);
      AppLogger.info('Activities: ${changed.length} updated');
    }
  }

  /// General pagination tool
  Future<List<T>> _fetchAllPages<T, P>({
    required Future<P> Function(int page) fetch,
  }) async {
    final all = <T>[];
    int page = 1;
    while (true) {
      final pageModel = await fetch(page);
      // pageModel 是 AttractionPageModel / AudioGuidePageModel / ActivityPageModel
      final data = (pageModel as dynamic).data as List;
      all.addAll(data.cast<T>());
      if (all.length >= (pageModel as dynamic).total) break;
      page++;
    }
    return all;
  }

  static String _normalize(String s) =>
      s.replaceAll('　', '').replaceAll(' ', '').toLowerCase().trim();

  int? _matchAttractionId({
    required String audioTitle,
    required List<AttractionTableData> attractions,
  }) {
    final normalized = _normalize(audioTitle);
    try {
      return attractions.firstWhere((a) => _normalize(a.name) == normalized).id;
    } catch (_) {
      return null;
    }
  }

  /// Called when pull-to-refresh (forces update, ignores TTL)
  Future<void> forceSync(SyncTarget target) async {
    switch (target) {
      case SyncTarget.attractions:
        await _syncAttractions();
        await db.syncMetaDao.saveLastSyncedAt(_attractionKey);
      case SyncTarget.audioGuides:
        await _syncAudioGuides();
        await db.syncMetaDao.saveLastSyncedAt(_audioGuideKey);
      case SyncTarget.activities:
        await _syncActivities();
        await db.syncMetaDao.saveLastSyncedAt(_activityKey);
    }
  }
}
