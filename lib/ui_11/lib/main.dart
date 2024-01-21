import 'package:flutter/material.dart';
import 'package:modul_4_homework_obidxon/ui_11/lib/presentation/screens/splash_screen.dart';


class MyAppUi11 extends StatelessWidget {
  const MyAppUi11({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Food Delivery',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const SplashScreenUi11(),
    );
  }
}