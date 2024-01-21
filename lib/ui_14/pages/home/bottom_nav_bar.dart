import 'package:flutter/material.dart';
import 'package:modul_4_homework_obidxon/ui_14/compotations.dart';
import 'package:modul_4_homework_obidxon/ui_14/pages/home/home_screen.dart';
import 'package:modul_4_homework_obidxon/ui_14/pages/message/message_screen.dart';
import 'package:modul_4_homework_obidxon/ui_14/pages/profile/profile_screen.dart';
import 'package:modul_4_homework_obidxon/ui_14/pages/schedule/schedule_screen.dart';
import 'package:modul_4_homework_obidxon/ui_14/pages/search/search_screen.dart';

class BottomNavBarUi14 extends StatefulWidget {
  const BottomNavBarUi14({super.key});

  @override
  State<BottomNavBarUi14> createState() => _BottoNavBarUi14State();
}

class _BottoNavBarUi14State extends State<BottomNavBarUi14> {
  int _selectedIndex = 0;

  List<Widget> _screens = [
    HomeScreenUi14(),
    ScheduleScreenUi14(),
    SearchScreenUi14(),
    MessageScreen(),
    ProfileScreenUi14(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        currentIndex: _selectedIndex,
        selectedItemColor: kPrimaryColorUi14,
        unselectedItemColor: kSubTextColorUi14,
        backgroundColor: Colors.white,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.calendar_month_outlined), label: "Calendar"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
          BottomNavigationBarItem(icon: Icon(Icons.message), label: "Message"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
      ),
      body: _screens[_selectedIndex],
    );
  }
}
