import 'package:flutter/material.dart';
import 'package:modul_4_homework_obidxon/ui_9/constants.dart';
import 'package:modul_4_homework_obidxon/ui_9/screen/home_screen.dart';

class MyAppUi9 extends StatelessWidget {
  const MyAppUi9({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: kPrimaryColorUi9,
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: AppBarTheme(color: kPrimaryColorUi9),
        textTheme: TextTheme(
          bodyLarge: TextStyle(color: kSecondaryColorUi9),
          bodyMedium: TextStyle(color: kSecondaryColorUi9)
        )
      ),
      home: HomePageUi9(),
    );
  }
}