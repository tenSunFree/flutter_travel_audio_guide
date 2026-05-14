import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/router/app_router.dart';
import '../../../activity/presentation/pages/activity_list_page.dart';
import '../../../attraction/presentation/pages/attraction_list_page.dart';
import '../../../audio_guide/presentation/pages/audio_guide_list_page.dart';
import '../../../reminder/presentation/pages/my_journey_page.dart';
import 'home_page.dart';

class MainTabPage extends StatefulWidget {
  const MainTabPage({super.key});

  @override
  State<MainTabPage> createState() => _MainTabPageState();
}

class _MainTabPageState extends State<MainTabPage> {
  int _currentIndex = 0;

  // IndexedStack retains the state of each page (scroll position, loaded data), and switching tabs will not restructure it.
  static const List<Widget> _pages = [
    HomePage(),
    AudioGuideListPage(),
    ActivityListPage(),
    AttractionListPage(),
    MyJourneyPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(index: _currentIndex, children: _pages),
      floatingActionButton: kDebugMode
          ? FloatingActionButton(
              heroTag: 'debug_log',
              backgroundColor: Colors.red,
              child: const Icon(Icons.bug_report, color: Colors.white),
              onPressed: () => context.push(AppRoutes.appLog),
            )
          : null,
      bottomNavigationBar: NavigationBar(
        selectedIndex: _currentIndex,
        onDestinationSelected: (index) {
          setState(() => _currentIndex = index);
        },
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.home_outlined),
            selectedIcon: Icon(Icons.home),
            label: '首頁',
          ),
          NavigationDestination(
            icon: Icon(Icons.headphones_outlined),
            selectedIcon: Icon(Icons.headphones),
            label: '語音導覽',
          ),
          NavigationDestination(
            icon: Icon(Icons.event_outlined),
            selectedIcon: Icon(Icons.event),
            label: '活動展演',
          ),
          NavigationDestination(
            icon: Icon(Icons.place_outlined),
            selectedIcon: Icon(Icons.place),
            label: '遊憩景點',
          ),
          NavigationDestination(
            icon: Icon(Icons.card_travel_outlined),
            selectedIcon: Icon(Icons.card_travel),
            label: '我的旅程',
          ),
        ],
      ),
    );
  }
}
