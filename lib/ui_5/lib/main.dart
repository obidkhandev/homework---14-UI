import 'package:flutter/material.dart';
import 'package:modul_4_homework_obidxon/ui_5/lib/consttants.dart';
import 'package:modul_4_homework_obidxon/ui_5/lib/pages/welcome_page.dart';


class MyAppUi5 extends StatelessWidget {
  const MyAppUi5({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flamingo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        textTheme: Theme.of(context).textTheme.apply(
          displayColor: kBlackColorUi5,
        ),
      ),
      home: const WelcomePage(),
    );
  }
}

