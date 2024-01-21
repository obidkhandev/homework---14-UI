import 'package:flutter/material.dart';
import 'package:modul_4_homework_obidxon/ui_14/pages/splash/splash_page.dart';

class MyAppUi14 extends StatelessWidget {
  const MyAppUi14({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
      ),
      home: const SplashScreenUi14(),
    );
  }
}