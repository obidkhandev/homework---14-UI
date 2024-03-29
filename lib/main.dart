import 'package:flutter/material.dart';
import 'package:modul_4_homework_obidxon/ui_1/screens/detail_page.dart';
import 'package:modul_4_homework_obidxon/ui_1/screens/home_page.dart';
import 'package:modul_4_homework_obidxon/ui_10/screen/home_screen.dart';
import 'package:modul_4_homework_obidxon/ui_11/lib/main.dart';
import 'package:modul_4_homework_obidxon/ui_12/screens/home_card_open.dart';
import 'package:modul_4_homework_obidxon/ui_12/screens/home_screens.dart';
import 'package:modul_4_homework_obidxon/ui_12/screens/home_wishlist.dart';
import 'package:modul_4_homework_obidxon/ui_13/screens/on_boarding_screen.dart';
import 'package:modul_4_homework_obidxon/ui_14/pages/material.dart';
import 'package:modul_4_homework_obidxon/ui_2/screens/home_page.dart';
import 'package:modul_4_homework_obidxon/ui_3/main.dart';
import 'package:modul_4_homework_obidxon/ui_4/lib/main.dart';
import 'package:modul_4_homework_obidxon/ui_5/lib/main.dart';
import 'package:modul_4_homework_obidxon/ui_6/lib/main.dart';
import 'package:modul_4_homework_obidxon/ui_7/main.dart';
import 'package:modul_4_homework_obidxon/ui_8/screen/welcome/welcome_page.dart';
import 'package:modul_4_homework_obidxon/ui_9/screen/my_app.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'HomeWork',
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}
int screenIndex = 0;

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    List<Widget> screens = [
      const HomePageUi1(),
      const DetailPageUi1(),
      const HomePageUi_2(),
      const MyAppUi_3(),
      const MyAppUi4(),
      const MyAppUi5(),
      const MyAppUi6(),
      const MyAppUi7(),
      const WelcomeScreenUi8(),
      const MyAppUi9(),
      const HomeScreenUi10(),
      const MyAppUi11(),
      const HomePageUi12(),
      const HomeWishlist(),
      const HomeCardOpenScreenUi12(),
      const OnBoardingScreenUi13(),
      const MyAppUi14(),
    ];
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if (screenIndex + 1 < screens.length) {
            screenIndex++;
            setState(() {});
          }
        },
        child: const Icon(Icons.next_plan),
      ),
      body: screens[screenIndex],
    );
  }
}
