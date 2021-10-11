import 'package:facebook_clone/style/constant.dart';
import 'package:facebook_clone/view/feed.dart';
import 'package:facebook_clone/view/inner_view/app_bar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  void _onTabClick(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  static const List<Widget> _widgetOptions = <Widget>[
    FeedPage(),
    Center(
      child: Text(
        'Videos',
        style: TextStyle(fontSize: 18, color: Colors.white),
      ),
    ),
    Center(
      child: Text(
        'Cart',
        style: TextStyle(fontSize: 18, color: Colors.white),
      ),
    ),
    Center(
      child: Text(
        'Groups',
        style: TextStyle(fontSize: 18, color: Colors.white),
      ),
    ),
    Center(
      child: Text(
        'More',
        style: TextStyle(fontSize: 18, color: Colors.white),
      ),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ConstColors.mainDark,
      appBar: const PreferredSize(
          preferredSize: Size.fromHeight(60),
          child: FaceBar()),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: navBarItems,
        elevation: 0,
        onTap: _onTabClick,
        currentIndex: _currentIndex,
        backgroundColor: ConstColors.cardDark,
      ),
      body: _widgetOptions.elementAt(_currentIndex),
    );
  }
}
