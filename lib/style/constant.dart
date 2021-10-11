import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ConstColors {
  static Color mainDark = const Color(0xff0F1627);
  static Color cardDark = const Color(0xff222833);
  static Color bottonDark = const Color(0xff474d5a);
  static Color shadowDark = const Color(0xff282F3C);
  static Color borderDark = const Color(0xff707070);
}

class ConstStyle {
  static ThemeData styleDark = ThemeData(
    primaryColor: ConstColors.mainDark,
    textTheme: ThemeData.dark().textTheme,
  );
}

List<BottomNavigationBarItem> navBarItems = [
  BottomNavigationBarItem(
    icon: SvgPicture.asset(
      'assets/home.svg',
      color: ConstColors.bottonDark,
    ),
    activeIcon: SvgPicture.asset(
      'assets/home.svg',
    ),
    label: '',
  ),
  BottomNavigationBarItem(
    icon: Stack(
      children: [
        SvgPicture.asset(
          'assets/play.svg',
          color: ConstColors.bottonDark,
        ),
        Positioned(
          top: 0,
          right: 0,
          child: Container(
            width: 13,
            height: 13,
            child: const CircleAvatar(
              radius: 20,
              backgroundColor: Colors.redAccent,
            ),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: Colors.white,
                width: 2,
              ),
            ),
          ),
        ),
      ],
    ),
    activeIcon: Stack(
      children: [
        SvgPicture.asset('assets/play.svg'),
        Positioned(
          top: 0,
          right: 0,
          child: Container(
            width: 13,
            height: 13,
            child: const CircleAvatar(
              radius: 20,
              backgroundColor: Colors.redAccent,
            ),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: Colors.white,
                width: 2,
              ),
            ),
          ),
        ),
      ],
    ),
    label: '',
  ),
  BottomNavigationBarItem(
    icon: Stack(
      children: [
        SvgPicture.asset(
          'assets/cart.svg',
          color: ConstColors.bottonDark,
        ),
        Positioned(
          top: 0,
          right: 0,
          child: Container(
            width: 13,
            height: 13,
            child: const CircleAvatar(
              radius: 20,
              backgroundColor: Colors.redAccent,
            ),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: Colors.white,
                width: 2,
              ),
            ),
          ),
        ),
      ],
    ),
    activeIcon: Stack(
      children: [
        SvgPicture.asset(
          'assets/cart.svg',
        ),
        Positioned(
          top: 0,
          right: 0,
          child: Container(
            width: 13,
            height: 13,
            child: const CircleAvatar(
              radius: 20,
              backgroundColor: Colors.redAccent,
            ),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: Colors.white,
                width: 2,
              ),
            ),
          ),
        ),
      ],
    ),
    label: '',
  ),
  BottomNavigationBarItem(
    icon: SvgPicture.asset(
      'assets/groups.svg',
      color: ConstColors.bottonDark,
    ),
    activeIcon: SvgPicture.asset('assets/groups.svg'),
    label: '',
  ),
  BottomNavigationBarItem(
    icon: SvgPicture.asset(
      'assets/more.svg',
      color: ConstColors.bottonDark,
    ),
    activeIcon: SvgPicture.asset('assets/more.svg'),
    label: '',
  ),
];
