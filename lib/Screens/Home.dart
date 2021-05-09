import 'package:flutter/material.dart';
import 'package:travel_app/PageWidgets/ExplorePage.dart';
import 'package:travel_app/PageWidgets/HistoryPage.dart';
import 'package:travel_app/PageWidgets/HomePage.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  int _currentIndex = 0;
  static final List<Widget> _pageWidgets = [
    HomePage(),
    ExplorePage(),
    HistoryPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Travel App',
          style: TextStyle(
            color: Colors.white
          ),
        ),
      ),

      body: _pageWidgets[_currentIndex],

      bottomNavigationBar: BottomNavigationBar(
        onTap: bottomNavTap,
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.explore), label: 'Explore'),
          BottomNavigationBarItem(icon: Icon(Icons.history), label: 'Past Trips'),
        ],
      ),
    );
  }

  void bottomNavTap(int value) {
    setState(() {
      _currentIndex = value;
    });
  }
}
