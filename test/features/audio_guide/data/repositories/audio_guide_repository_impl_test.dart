import 'dart:typed_data';
import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_travel_audio_guide/core/error/exceptions.dart';
import 'package:flutter_travel_audio_guide/features/audio_guide/data/datasources/audio_guide_local_data_source.dart';
import 'package:flutter_travel_audio_guide/features/audio_guide/data/datasources/audio_guide_remote_data_source.dart';
import 'package:flutter_travel_audio_guide/features/audio_guide/data/models/audio_guide_model.dart';
import 'package:flutter_travel_audio_guide/features/audio_guide/data/models/audio_guide_page_model.dart';
import 'package:flutter_travel_audio_guide/features/audio_guide/data/repositories/audio_guide_repository_impl.dart';
import 'package:flutter_travel_audio_guide/features/audio_guide/domain/entities/audio_guide.dart';

// Fake Remote
class _FakeRemoteDataSource extends AudioGuideRemoteDataSource {
  _FakeRemoteDataSource({required this.pageModel, this.downloadedBinary})
    : super(Dio());

  AudioGuidePageModel pageModel;
  DownloadedAudioBinary? downloadedBinary;
  final List<String> downloadedUrls = <String>[];

  @override
  Future<AudioGuidePageModel> getAudioGuides({
    required String lang,
    required int page,
  }) async {
    return pageModel;
  }

  @override
  Future<DownloadedAudioBinary> downloadAudioBinary(String url) async {
    downloadedUrls.add(url);
    final result = downloadedBinary;
    if (result == null) throw DownloadException('download failed');
    return result;
  }
}

// Fake Local
// NOTE: The format returned by `getAudioFilePath` must be consistent with the logic of `_buildFileName`:
// /audio/{id}_{sanitizedTitle}.mp3
// Whitespace → _, illegal characters → _, while preserving Chinese characters.
// In the test, we directly control this fake, so the path can be customized.
class _FakeLocalDataSource extends AudioGuideLocalDataSource {
  _FakeLocalDataSource({Set<String>? existingPaths})
    : existingPaths = existingPaths ?? <String>{};

  final Set<String> existingPaths;
  final Map<String, Uint8List> writtenBytes = <String, Uint8List>{};

  @override
  Future<String> getAudioFilePath({
    required int id,
    required String title,
  }) async {
    // Simulate _buildFileName: Replace spaces & illegal characters with _
    final sanitized = title
        .replaceAll(RegExp(r'[\\/:*?"<>|]'), '_')
        .replaceAll(RegExp(r'\s+'), '_')
        .trim();
    final safe = sanitized.isEmpty ? 'audio_$id' : '${id}_$sanitized';
    return '/audio/$safe.mp3';
  }

  @override
  Future<bool> existsPath(String path) async {
    return existingPaths.contains(path);
  }

  @override
  Future<void> writeBytes({
    required Uint8List bytes,
    required String path,
  }) async {
    writtenBytes[path] = bytes;
    existingPaths.add(path);
  }
}

// Helpers
AudioGuideModel _model(int id, String title, String modified) {
  return AudioGuideModel(
    id: id,
    title: title,
    summary: 'Summary $id',
    url: 'https://example.com/$id.mp3',
    fileExt: 'mp3',
    modified: modified,
  );
}

AudioGuide _guide({
  int id = 1,
  String title = 'Guide 1',
  String url = 'https://example.com/1.mp3',
}) {
  return AudioGuide(
    id: id,
    title: title,
    summary: null,
    url: url,
    fileExt: 'mp3',
    modified: '2026-05-01',
    isDownloaded: false,
    localFilePath: null,
  );
}

// Tests
void main() {
  group('AudioGuideRepositoryImpl', () {
    // getAudioGuides
    group('getAudioGuides', () {
      test('maps remote models and correctly sets local download status', () async {
        // Guide A (id=1) is already on my machine, Guide B (id=2) has not been downloaded.
        final remote = _FakeRemoteDataSource(
          pageModel: AudioGuidePageModel(
            total: 2,
            page: 1,
            data: [_model(1, 'A', '2026-05-01'), _model(2, 'B', '2026-05-02')],
          ),
        );
        // The path must be aligned with the postback format of _FakeLocalDataSource.getAudioFilePath
        final local = _FakeLocalDataSource(existingPaths: {'/audio/1_A.mp3'});
        final repo = AudioGuideRepositoryImpl(
          remoteDataSource: remote,
          localDataSource: local,
        );
        final page = await repo.getAudioGuides(lang: 'zh-tw', page: 1);
        expect(page.total, 2);
        expect(page.page, 1);
        expect(page.items.map((e) => e.id), <int>[1, 2]);
        final guide1 = page.items.firstWhere((g) => g.id == 1);
        final guide2 = page.items.firstWhere((g) => g.id == 2);
        expect(guide1.isDownloaded, isTrue);
        expect(guide1.localFilePath, '/audio/1_A.mp3');
        expect(guide2.isDownloaded, isFalse);
        expect(guide2.localFilePath, isNull);
      });
      test('hasMore is false when total <= pageSize (30)', () async {
        // total=2, page=1, 1*30 >= 2, therefore hasMore = false
        final remote = _FakeRemoteDataSource(
          pageModel: AudioGuidePageModel(
            total: 2,
            page: 1,
            data: [_model(1, 'A', '2026-05-01'), _model(2, 'B', '2026-05-02')],
          ),
        );
        final local = _FakeLocalDataSource();
        final repo = AudioGuideRepositoryImpl(
          remoteDataSource: remote,
          localDataSource: local,
        );
        final page = await repo.getAudioGuides(lang: 'zh-tw', page: 1);
        expect(page.hasMore, isFalse);
      });
      test('hasMore is true when total > page * pageSize', () async {
        // total=100, page=1, 1*30 < 100, so hasMore = true
        final remote = _FakeRemoteDataSource(
          pageModel: AudioGuidePageModel(
            total: 100,
            page: 1,
            data: List.generate(
              30,
              (i) => _model(i + 1, 'Guide ${i + 1}', '2026-01-01'),
            ),
          ),
        );
        final local = _FakeLocalDataSource();
        final repo = AudioGuideRepositoryImpl(
          remoteDataSource: remote,
          localDataSource: local,
        );
        final page = await repo.getAudioGuides(lang: 'zh-tw', page: 1);
        expect(page.hasMore, isTrue);
      });
      test('returns empty list when remote returns no data', () async {
        final remote = _FakeRemoteDataSource(
          pageModel: const AudioGuidePageModel(total: 0, page: 1, data: []),
        );
        final local = _FakeLocalDataSource();
        final repo = AudioGuideRepositoryImpl(
          remoteDataSource: remote,
          localDataSource: local,
        );
        final page = await repo.getAudioGuides(lang: 'zh-tw', page: 1);
        expect(page.items, isEmpty);
        expect(page.hasMore, isFalse);
      });
    });
    // downloadAudioGuide
    group('downloadAudioGuide', () {
      test(
        'returns existing path without downloading again when file exists',
        () async {
          final remote = _FakeRemoteDataSource(
            pageModel: const AudioGuidePageModel(total: 0, page: 1, data: []),
          );
          final local = _FakeLocalDataSource(
            existingPaths: {'/audio/1_Guide_1.mp3'},
          );
          final repo = AudioGuideRepositoryImpl(
            remoteDataSource: remote,
            localDataSource: local,
          );
          final path = await repo.downloadAudioGuide(_guide());
          expect(path, '/audio/1_Guide_1.mp3');
          // Important: Remote downloads should not be triggered.
          expect(remote.downloadedUrls, isEmpty);
        },
      );
      test('writes bytes when response content-type is audio/mpeg', () async {
        final fakeBytes = Uint8List.fromList([0xFF, 0xFB, 0x90, 0x00]);
        final remote = _FakeRemoteDataSource(
          pageModel: const AudioGuidePageModel(total: 0, page: 1, data: []),
          downloadedBinary: DownloadedAudioBinary(
            bytes: fakeBytes,
            contentType: 'audio/mpeg',
            finalUrl: 'https://cdn.example.com/1',
          ),
        );
        final local = _FakeLocalDataSource();
        final repo = AudioGuideRepositoryImpl(
          remoteDataSource: remote,
          localDataSource: local,
        );
        final path = await repo.downloadAudioGuide(_guide());
        expect(path, '/audio/1_Guide_1.mp3');
        expect(remote.downloadedUrls, ['https://example.com/1.mp3']);
        expect(local.writtenBytes[path], fakeBytes);
      });
      test('accepts mp3 final url even with non-audio content-type', () async {
        // After a CDN 302 redirect, if the final URL ends with .mp3, it is still considered audio.
        final remote = _FakeRemoteDataSource(
          pageModel: const AudioGuidePageModel(total: 0, page: 1, data: []),
          downloadedBinary: DownloadedAudioBinary(
            bytes: Uint8List.fromList([1, 2, 3]),
            contentType: 'application/octet-stream',
            finalUrl: 'https://cdn.example.com/redirect/1.mp3',
          ),
        );
        final local = _FakeLocalDataSource();
        final repo = AudioGuideRepositoryImpl(
          remoteDataSource: remote,
          localDataSource: local,
        );
        final path = await repo.downloadAudioGuide(
          _guide(url: 'https://example.com/download?id=1'),
        );
        expect(local.writtenBytes[path], isNotNull);
      });
      test(
        'accepts non-audio content-type when guide.url ends with .mp3',
        () async {
          // guide.url itself ends with .mp3 → it is considered audio.
          final remote = _FakeRemoteDataSource(
            pageModel: const AudioGuidePageModel(total: 0, page: 1, data: []),
            downloadedBinary: DownloadedAudioBinary(
              bytes: Uint8List.fromList([0xFF, 0xFB]),
              contentType: 'application/octet-stream',
              finalUrl: 'https://cdn.example.com/no-ext-url',
            ),
          );
          final local = _FakeLocalDataSource();
          final repo = AudioGuideRepositoryImpl(
            remoteDataSource: remote,
            localDataSource: local,
          );
          // guide.url = 'https://example.com/1.mp3' (default), ending with .mp3
          final path = await repo.downloadAudioGuide(_guide());
          expect(local.writtenBytes[path], isNotNull);
        },
      );
      test(
        'throws DownloadException when response is HTML (not audio)',
        () async {
          // Context: The server is sending back the login page HTML, not MP3.
          final remote = _FakeRemoteDataSource(
            pageModel: const AudioGuidePageModel(total: 0, page: 1, data: []),
            downloadedBinary: DownloadedAudioBinary(
              bytes: Uint8List.fromList([60, 104, 116, 109, 108]), // <html
              contentType: 'text/html',
              finalUrl: 'https://example.com/login.html',
            ),
          );
          final local = _FakeLocalDataSource();
          final repo = AudioGuideRepositoryImpl(
            remoteDataSource: remote,
            localDataSource: local,
          );
          expect(
            () => repo.downloadAudioGuide(
              _guide(url: 'https://example.com/login.html'),
            ),
            throwsA(isA<DownloadException>()),
          );
        },
      );
      test('does not write file when DownloadException is thrown', () async {
        final remote = _FakeRemoteDataSource(
          pageModel: const AudioGuidePageModel(total: 0, page: 1, data: []),
          downloadedBinary: DownloadedAudioBinary(
            bytes: Uint8List.fromList([1]),
            contentType: 'text/html',
            finalUrl: 'https://example.com/error.html',
          ),
        );
        final local = _FakeLocalDataSource();
        final repo = AudioGuideRepositoryImpl(
          remoteDataSource: remote,
          localDataSource: local,
        );
        try {
          await repo.downloadAudioGuide(
            _guide(url: 'https://example.com/error.html'),
          );
        } catch (_) {}
        expect(local.writtenBytes, isEmpty);
      });
    });
    // isGuideDownloaded
    group('isGuideDownloaded', () {
      test('returns true when local file exists', () async {
        final remote = _FakeRemoteDataSource(
          pageModel: const AudioGuidePageModel(total: 0, page: 1, data: []),
        );
        final local = _FakeLocalDataSource(
          existingPaths: {'/audio/1_Guide_1.mp3'},
        );
        final repo = AudioGuideRepositoryImpl(
          remoteDataSource: remote,
          localDataSource: local,
        );
        expect(await repo.isGuideDownloaded(_guide()), isTrue);
      });
      test('returns false when local file does not exist', () async {
        final remote = _FakeRemoteDataSource(
          pageModel: const AudioGuidePageModel(total: 0, page: 1, data: []),
        );
        final local = _FakeLocalDataSource(); // No existing path
        final repo = AudioGuideRepositoryImpl(
          remoteDataSource: remote,
          localDataSource: local,
        );
        expect(await repo.isGuideDownloaded(_guide()), isFalse);
      });
    });
  });
}
