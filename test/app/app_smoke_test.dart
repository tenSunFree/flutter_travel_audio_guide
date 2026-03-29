import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_travel_audio_guide/features/audio_guide/domain/entities/audio_guide_page.dart';
import '../test_helpers/app_test_harness.dart';
import '../test_helpers/audio_guide_fakes.dart';
import '../test_helpers/audio_guide_fixtures.dart';

void main() {
  group('App smoke test', () {
    testWidgets('shows loading indicator before initial data is loaded', (
      WidgetTester tester,
    ) async {
      final getCompleter = Completer<AudioGuidePage>();
      final repo = FakeAudioGuideRepository(
        onGet: ({required lang, required page}) async {
          return await getCompleter.future;
        },
      );
      await tester.pumpWidget(buildTestApp(repo));
      await tester.pump();
      expect(find.byType(CircularProgressIndicator), findsOneWidget);
    });

    testWidgets('renders app title and list content after successful load', (
      WidgetTester tester,
    ) async {
      final repo = FakeAudioGuideRepository(
        onGet: ({required lang, required page}) async {
          return buildAudioGuidePage(
            items: [buildAudioGuide(1, title: '台北101導覽')],
          );
        },
      );
      await tester.pumpWidget(buildTestApp(repo));
      await tester.pumpAndSettle();
      expect(find.text('FUNDAY'), findsOneWidget);
      expect(find.text('台北101導覽'), findsOneWidget);
      expect(find.text('下載'), findsOneWidget);
    });

    testWidgets('shows retry button and error text when initial load fails', (
      WidgetTester tester,
    ) async {
      final repo = FakeAudioGuideRepository(
        onGet: ({required lang, required page}) async {
          throw Exception('timeout');
        },
      );
      await tester.pumpWidget(buildTestApp(repo));
      await tester.pumpAndSettle();
      expect(find.textContaining('timeout'), findsOneWidget);
      expect(find.text('重新載入'), findsOneWidget);
    });

    testWidgets(
      'shows downloading state and success snackbar after tapping download',
      (WidgetTester tester) async {
        final downloadCompleter = Completer<String>();
        final repo = FakeAudioGuideRepository(
          onGet: ({required lang, required page}) async {
            return buildAudioGuidePage(
              items: [buildAudioGuide(42, title: '台北101導覽')],
            );
          },
          onDownload: (_) => downloadCompleter.future,
        );
        await tester.pumpWidget(buildTestApp(repo));
        await tester.pumpAndSettle();
        await tester.tap(find.text('下載'));
        await tester.pump();
        expect(find.text('下載中'), findsOneWidget);
        downloadCompleter.complete(r'C:\audio\42.mp3');
        await tester.pumpAndSettle();
        expect(find.text('播放'), findsOneWidget);
        expect(find.text('下載完成'), findsOneWidget);
      },
    );

    testWidgets('shows error snackbar when download fails', (
      WidgetTester tester,
    ) async {
      final repo = FakeAudioGuideRepository(
        onGet: ({required lang, required page}) async {
          return buildAudioGuidePage(
            items: [buildAudioGuide(99, title: '台北101導覽')],
          );
        },
        onDownload: (_) async => throw Exception('磁碟空間不足'),
      );
      await tester.pumpWidget(buildTestApp(repo));
      await tester.pumpAndSettle();
      await tester.tap(find.text('下載'));
      await tester.pumpAndSettle();
      expect(find.textContaining('磁碟空間不足'), findsOneWidget);
    });

    testWidgets(
      'navigates to detail page when tapping play on a downloaded item',
      (WidgetTester tester) async {
        final repo = FakeAudioGuideRepository(
          onGet: ({required lang, required page}) async {
            return buildAudioGuidePage(
              items: [
                buildAudioGuide(
                  1,
                  isDownloaded: true,
                  localFilePath: '/audio/1.mp3',
                  title: '台北101導覽',
                ),
              ],
            );
          },
        );
        await tester.pumpWidget(buildTestApp(repo));
        await tester.pumpAndSettle();
        await tester.tap(find.text('播放'));
        await tester.pumpAndSettle();
        expect(find.text('1.mp3'), findsOneWidget);
      },
    );

    testWidgets('MaterialApp disables debug banner', (
      WidgetTester tester,
    ) async {
      final repo = FakeAudioGuideRepository(
        onGet: ({required lang, required page}) async {
          return buildAudioGuidePage(items: const []);
        },
      );
      await tester.pumpWidget(buildTestApp(repo));
      await tester.pump();
      final materialApp = tester.widget<MaterialApp>(find.byType(MaterialApp));
      expect(materialApp.debugShowCheckedModeBanner, isFalse);
    });
  });
}
