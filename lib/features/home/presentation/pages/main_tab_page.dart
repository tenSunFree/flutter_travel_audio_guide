import 'package:flutter/material.dart';
import '../../../audio_guide/presentation/pages/audio_guide_list_page.dart';
import '../../../activity/presentation/pages/activity_list_page.dart';

class MainTabPage extends StatefulWidget {
  const MainTabPage({super.key});

  @override
  State<MainTabPage> createState() => _MainTabPageState();
}

class _MainTabPageState extends State<MainTabPage> {
  int _currentIndex = 0;

  // IndexedStack preserves the state of each page (scroll position, loaded data) when switching tabs,
  // It does not refresh the list.
  static const List<Widget> _pages = [AudioGuideListPage(), ActivityListPage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Do not set up an AppBar on this floor; each Page manages its own.
      body: IndexedStack(index: _currentIndex, children: _pages),
      bottomNavigationBar: NavigationBar(
        selectedIndex: _currentIndex,
        onDestinationSelected: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        destinations: const [
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
        ],
      ),
    );
  }
}
