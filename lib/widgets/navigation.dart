import 'package:empat_flutter_week_3/screens/add_screen.dart';
import 'package:empat_flutter_week_3/screens/explore_screen.dart';
import 'package:empat_flutter_week_3/screens/home_screen.dart';
import 'package:empat_flutter_week_3/screens/profile_screen.dart';
import 'package:empat_flutter_week_3/screens/reel_screen.dart';
import 'package:flutter/material.dart';

class NavigationScreen extends StatefulWidget {
  const NavigationScreen({super.key});

  @override
  State<NavigationScreen> createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen> {
  int _currentIndex = 0;
  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  void onPageChanged(int pageIndex) {
    setState(() {
      _currentIndex = pageIndex;
    });
  }

  void onNavigationTap(int pageIndex) {
    _pageController.jumpToPage(pageIndex);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        currentIndex: _currentIndex,
        onTap: onNavigationTap,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.camera), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.video_call), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: ''),
        ],
      ),
      body: PageView(
        controller: _pageController,
        onPageChanged: onPageChanged,
        children: const [
          HomeScreen(),
          ExploreScreen(),
          AddScreen(),
          ReelScreen(),
          ProfileScreen(),
        ],
      ),
    );
  }
}
