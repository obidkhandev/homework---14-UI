import 'package:flutter/material.dart';
import 'package:modul_4_homework_obidxon/ui_14/pages/sing/verification.dart';

class MyAppUi14 extends StatelessWidget {
  const MyAppUi14({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
      ),
      home: VerificationScreen(),
    );
  }
}