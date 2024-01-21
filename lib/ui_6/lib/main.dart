import 'package:flutter/material.dart';
import 'package:modul_4_homework_obidxon/ui_6/lib/constants.dart';
import 'package:modul_4_homework_obidxon/ui_6/lib/pages/home_page.dart';


class MyAppUi6 extends StatelessWidget {
  const MyAppUi6({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Daily Exercises',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Cario',
        scaffoldBackgroundColor: kBackroundColorUi6,
        textTheme: Theme.of(context).textTheme.apply(displayColor: kTextColorUi6,),
        useMaterial3: true,
      ),
      home: const HomePageUi6(),
    );
  }
}

