import 'package:flutter/material.dart';
import 'package:modul_4_homework_obidxon/ui_7/constants.dart';
import 'package:modul_4_homework_obidxon/ui_7/screen/home_screen.dart';

class MyAppUi7 extends StatelessWidget {
  const MyAppUi7({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: kPrimaryColorUi7,
        scaffoldBackgroundColor: kBackgroundColorUi7,
        textTheme:
            Theme.of(context).textTheme.apply(displayColor: kTextColorUi7),
      ),
      home: HomeScreenUi7(),
    );
  }
}
