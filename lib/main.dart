import 'package:flutter/material.dart';
import 'package:modul_4_homework_obidxon/ui_1/screens/detail_page.dart';
import 'package:modul_4_homework_obidxon/ui_1/screens/home_page.dart';
import 'package:modul_4_homework_obidxon/ui_10/screen/home_screen.dart';
import 'package:modul_4_homework_obidxon/ui_12/screens/home_screens.dart';
import 'package:modul_4_homework_obidxon/ui_2/screens/home_page.dart';
import 'package:modul_4_homework_obidxon/ui_3/main.dart';
import 'package:modul_4_homework_obidxon/ui_7/main.dart';
import 'package:modul_4_homework_obidxon/ui_8/screen/welcome/welcome_page.dart';
import 'package:modul_4_homework_obidxon/ui_9/screen/my_app.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context){
    return MaterialApp(
        title: 'HomeWork',
        debugShowCheckedModeBanner: false,
        home: const MyHomePage());
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

int screenIndex = 7;

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    List<Widget> screens = [
      const HomePageUi1(), 
      const DetailPageUi_1(),
      const HomePageUi_2(),
      const MyAppUi_3(),
      const MyAppUi7(),
      const WelcomeScreenUi8(),
      const MyAppUi9(),
      const HomeScreenUi10(),
      const HomePageUi12(),
      // const 
    ];
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if (screenIndex + 1 < screens.length) {
            screenIndex++;
            setState(() {});
          }
        },
        child:const Icon(Icons.next_plan),
      ),
      body: screens[screenIndex],
    );
  }
}
