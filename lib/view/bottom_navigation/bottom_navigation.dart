import 'package:bottom_navigation/view/bottom_navigation/screen_four.dart';
import 'package:bottom_navigation/view/bottom_navigation/screen_one.dart';
import 'package:bottom_navigation/view/bottom_navigation/message_screen.dart';
import 'package:bottom_navigation/view/bottom_navigation/screen_two.dart';
import 'package:flutter/material.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int indexValue = 0;
  @override
  Widget build(BuildContext context) {
    List screen = [ScreenOne(), ScreenTwo(), ScreenThree(), ScreenFour()];
    return Scaffold(
        // backgroundColor: Colors.blue,
        bottomNavigationBar: BottomNavigationBar(
            showSelectedLabels: false,
            showUnselectedLabels: false,
            type: BottomNavigationBarType.fixed,
            onTap: (value) {
              indexValue = value;
              setState(() {});
            },
            currentIndex: indexValue,
            items: [
              BottomNavigationBarItem(
                  icon: Icon(Icons.home_outlined), label: "Home"
                  // activeIcon: Icon(Icons.access_alarm_rounded),
                  ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.lock_clock), label: "Time"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.chat_bubble), label: "Message"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person_4_outlined), label: "Profile")
            ],
            selectedItemColor: Colors.blue),
        body: screen[indexValue]);
  }
}
