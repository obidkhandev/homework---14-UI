import 'package:flutter/material.dart';
import 'package:modul_4_homework_obidxon/ui_3/constants.dart';
import 'package:modul_4_homework_obidxon/ui_3/screens/home_page.dart';

class MyAppUi_3 extends StatelessWidget {
  const MyAppUi_3({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Food Delivery',
      theme: ThemeData(
          fontFamily: 'Poppins',
          scaffoldBackgroundColor: kWhiteColor,
          primaryColor: kPirimaryColor,
          textTheme: const TextTheme(
            labelLarge: TextStyle(fontWeight: FontWeight.bold),
            titleLarge: TextStyle(fontWeight: FontWeight.bold),
            titleMedium: TextStyle(fontWeight: FontWeight.bold),
          ),),
      home: const HomePageUi_3(),
    );
  }
}

