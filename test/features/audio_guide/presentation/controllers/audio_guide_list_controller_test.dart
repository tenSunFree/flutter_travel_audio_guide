// import 'dart:async';
// import 'package:flutter_test/flutter_test.dart';
// import 'package:flutter_travel_audio_guide/features/audio_guide/domain/entities/audio_guide.dart';
// import 'package:flutter_travel_audio_guide/features/audio_guide/domain/entities/audio_guide_page.dart';
// import 'package:flutter_travel_audio_guide/features/audio_guide/domain/usecases/download_audio_guide_usecase.dart';
// import 'package:flutter_travel_audio_guide/features/audio_guide/domain/usecases/get_audio_guides_usecase.dart';
// import 'package:flutter_travel_audio_guide/features/audio_guide/presentation/controllers/audio_guide_list_controller.dart';
// import '../../../../test_helpers/audio_guide_fakes.dart';
// import '../../../../test_helpers/audio_guide_fixtures.dart';
//
// Future<void> _flush() async {
//   await Future<void>.delayed(Duration.zero);
//   await Future<void>.delayed(Duration.zero);
// }
//
// ({FakeAudioGuideRepository repo, AudioGuideListController controller})
// _buildController({
//   required Future<AudioGuidePage> Function({
//     required String lang,
//     required int page,
//   })
//   onGet,
//   Future<String> Function(AudioGuide guide)? onDownload,
// }) {
//   final repo = FakeAudioGuideRepository(onGet: onGet, onDownload: onDownload);
//   final controller = AudioGuideListController(
//     getAudioGuidesUseCase: GetAudioGuidesUseCase(repo),
//     downloadAudioGuideUseCase: DownloadAudioGuideUseCase(repo),
//   );
//   return (repo: repo, controller: controller);
// }
//
// void main() {
//   group('AudioGuideListController', () {
//     test(
//       'starts in loading state and fills first page after initial load',
//       () async {
//         final getCompleter = Completer<AudioGuidePage>();
//         final bundle = _buildController(
//           onGet: ({required lang, required page}) => getCompleter.future,
//         );
//         addTearDown(bundle.controller.dispose);
//         expect(bundle.controller.state.isInitialLoading, isTrue);
//         expect(bundle.controller.state.items, isEmpty);
//         getCompleter.complete(
//           buildAudioGuidePage(
//             items: <AudioGuide>[buildAudioGuide(1), buildAudioGuide(2)],
//             page: 1,
//             hasMore: true,
//             total: 2,
//           ),
//         );
//         await _flush();
//         expect(bundle.controller.state.isInitialLoading, isFalse);
//         expect(bundle.controller.state.currentPage, 1);
//         expect(bundle.controller.state.total, 2);
//         expect(bundle.controller.state.hasMore, isTrue);
//         expect(bundle.controller.state.items.map((e) => e.id).toList(), <int>[
//           1,
//           2,
//         ]);
//         expect(bundle.repo.requestedPages, <int>[1]);
//         expect(bundle.repo.requestedLangs, <String>['zh-tw']);
//       },
//     );
//
//     test('sets errorMessage when initial load fails', () async {
//       final bundle = _buildController(
//         onGet: ({required lang, required page}) async {
//           throw Exception('網路錯誤');
//         },
//       );
//       addTearDown(bundle.controller.dispose);
//       await _flush();
//       expect(bundle.controller.state.isInitialLoading, isFalse);
//       expect(bundle.controller.state.items, isEmpty);
//       expect(bundle.controller.state.errorMessage, isNotNull);
//     });
//
//     test('loadMore appends next page items', () async {
//       final bundle = _buildController(
//         onGet: ({required lang, required page}) async {
//           if (page == 1) {
//             return buildAudioGuidePage(
//               items: <AudioGuide>[buildAudioGuide(1), buildAudioGuide(2)],
//               page: 1,
//               hasMore: true,
//               total: 3,
//             );
//           }
//           return buildAudioGuidePage(
//             items: <AudioGuide>[buildAudioGuide(3)],
//             page: 2,
//             hasMore: false,
//             total: 3,
//           );
//         },
//       );
//       addTearDown(bundle.controller.dispose);
//       await _flush();
//       await bundle.controller.loadMore();
//       expect(bundle.repo.requestedPages, <int>[1, 2]);
//       expect(bundle.controller.state.items.map((e) => e.id).toList(), <int>[
//         1,
//         2,
//         3,
//       ]);
//       expect(bundle.controller.state.currentPage, 2);
//       expect(bundle.controller.state.hasMore, isFalse);
//     });
//
//     test('loadMore does nothing when hasMore is false', () async {
//       final bundle = _buildController(
//         onGet: ({required lang, required page}) async {
//           return buildAudioGuidePage(
//             items: <AudioGuide>[buildAudioGuide(1)],
//             page: 1,
//             hasMore: false,
//             total: 1,
//           );
//         },
//       );
//       addTearDown(bundle.controller.dispose);
//       await _flush();
//       await bundle.controller.loadMore();
//       expect(bundle.repo.requestedPages, <int>[1]);
//       expect(bundle.controller.state.currentPage, 1);
//       expect(bundle.controller.state.items.length, 1);
//     });
//
//     test(
//       'loadMore failure stores errorMessage and keeps existing items',
//       () async {
//         final bundle = _buildController(
//           onGet: ({required lang, required page}) async {
//             if (page == 1) {
//               return buildAudioGuidePage(
//                 items: <AudioGuide>[buildAudioGuide(1)],
//                 page: 1,
//                 hasMore: true,
//                 total: 2,
//               );
//             }
//             throw Exception('第二頁載入失敗');
//           },
//         );
//         addTearDown(bundle.controller.dispose);
//         await _flush();
//         await bundle.controller.loadMore();
//         expect(bundle.controller.state.isLoadingMore, isFalse);
//         expect(bundle.controller.state.errorMessage, isNotNull);
//         expect(bundle.controller.state.items.map((e) => e.id).toList(), <int>[
//           1,
//         ]);
//       },
//     );
//
//     test('downloadGuide marks item downloaded and stores local path', () async {
//       final bundle = _buildController(
//         onGet: ({required lang, required page}) async {
//           return buildAudioGuidePage(items: <AudioGuide>[buildAudioGuide(10)]);
//         },
//         onDownload: (_) async => r'C:\audio\10.mp3',
//       );
//       addTearDown(bundle.controller.dispose);
//       await _flush();
//       final target = bundle.controller.state.items.single;
//       final error = await bundle.controller.downloadGuide(target);
//       expect(error, isNull);
//       final updated = bundle.controller.state.items.single;
//       expect(updated.isDownloaded, isTrue);
//       expect(updated.localFilePath, r'C:\audio\10.mp3');
//       expect(bundle.controller.state.downloadingIds, isEmpty);
//     });
//
//     test(
//       'downloadGuide returns error and keeps item unchanged when download fails',
//       () async {
//         final bundle = _buildController(
//           onGet: ({required lang, required page}) async {
//             return buildAudioGuidePage(items: <AudioGuide>[buildAudioGuide(7)]);
//           },
//           onDownload: (_) async => throw Exception('磁碟空間不足'),
//         );
//         addTearDown(bundle.controller.dispose);
//         await _flush();
//         final target = bundle.controller.state.items.single;
//         final error = await bundle.controller.downloadGuide(target);
//         expect(error, isNotNull);
//         expect(bundle.controller.state.items.single.isDownloaded, isFalse);
//         expect(bundle.controller.state.items.single.localFilePath, isNull);
//         expect(bundle.controller.state.downloadingIds, isEmpty);
//       },
//     );
//
//     test('blocks duplicate in-flight downloads for the same item', () async {
//       final downloadCompleter = Completer<String>();
//       final bundle = _buildController(
//         onGet: ({required lang, required page}) async {
//           return buildAudioGuidePage(items: <AudioGuide>[buildAudioGuide(99)]);
//         },
//         onDownload: (_) => downloadCompleter.future,
//       );
//       addTearDown(bundle.controller.dispose);
//       await _flush();
//       final target = bundle.controller.state.items.single;
//       final firstCall = bundle.controller.downloadGuide(target);
//       final secondCall = await bundle.controller.downloadGuide(target);
//       expect(secondCall, '該檔案正在下載中');
//       expect(bundle.controller.state.downloadingIds.contains(99), isTrue);
//       downloadCompleter.complete(r'C:\audio\99.mp3');
//       final firstResult = await firstCall;
//       expect(firstResult, isNull);
//       expect(bundle.controller.state.downloadingIds.contains(99), isFalse);
//     });
//
//     test('allows concurrent downloads for different items', () async {
//       final completer1 = Completer<String>();
//       final completer2 = Completer<String>();
//       final bundle = _buildController(
//         onGet: ({required lang, required page}) async {
//           return buildAudioGuidePage(
//             items: <AudioGuide>[buildAudioGuide(1), buildAudioGuide(2)],
//           );
//         },
//         onDownload: (guide) {
//           if (guide.id == 1) return completer1.future;
//           return completer2.future;
//         },
//       );
//       addTearDown(bundle.controller.dispose);
//       await _flush();
//       final g1 = bundle.controller.state.items[0];
//       final g2 = bundle.controller.state.items[1];
//       final f1 = bundle.controller.downloadGuide(g1);
//       final f2 = bundle.controller.downloadGuide(g2);
//       await Future<void>.delayed(Duration.zero);
//       expect(bundle.controller.state.downloadingIds, containsAll(<int>[1, 2]));
//       completer1.complete(r'C:\audio\1.mp3');
//       completer2.complete(r'C:\audio\2.mp3');
//       await f1;
//       await f2;
//       expect(bundle.controller.state.downloadingIds, isEmpty);
//     });
//   });
// }
