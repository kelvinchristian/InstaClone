//bottom navigation

import 'package:cloney/custom_colors.dart';
import 'package:cloney/home.dart';
import 'package:cloney/notification_page.dart';
import 'package:cloney/profile_page.dart';
import 'package:cloney/reels_page.dart';
import 'package:cloney/search_page.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    HomePage(),
    SearchPage(),
    ReelsPage(),
    NotificationPage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTabTapped,
        selectedFontSize: 0,
        unselectedFontSize: 0,
        currentIndex: _currentIndex,
       type: BottomNavigationBarType.fixed,
        selectedItemColor: CustomColors.orange,
        selectedIconTheme: IconThemeData(color: CustomColors.orange),
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            tooltip: 'Home',
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            tooltip: 'Search',
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.video_collection_outlined),
            tooltip: 'Reels',
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: '',
            tooltip: 'Notification',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_2_outlined),
            tooltip: 'Profile',
            label: '',
          ),
        ],
      ),
    );
  }

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}
