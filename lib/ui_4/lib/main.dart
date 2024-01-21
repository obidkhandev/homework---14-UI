import 'package:flutter/material.dart';
import 'package:modul_4_homework_obidxon/ui_4/lib/constant.dart';
import 'package:modul_4_homework_obidxon/ui_4/lib/widget/welcome_page.dart';


class MyAppUi4 extends StatelessWidget {
  const MyAppUi4({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      
      title: 'Auth Screen',
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: kPrimaryColorUi4,
        scaffoldBackgroundColor: kBackraundColorUi4,
        textTheme: const TextTheme(
          displaySmall:
              TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          labelLarge: TextStyle(color: kPrimaryColorUi4),
          headlineSmall:
              TextStyle(color: Colors.white, fontWeight: FontWeight.normal),
          labelMedium: TextStyle(color: kPrimaryColorUi4),
        ),
        inputDecorationTheme: InputDecorationTheme(
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.white.withOpacity(.2)),
          ),
        ),
        useMaterial3: true,
      ),
      home: const WelcomePage(),
    );
  }
}
