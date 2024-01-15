import 'package:flutter/material.dart';
import 'package:modul_4_homework_obidxon/ui_9/widget/home_app_bar.dart';
import 'package:modul_4_homework_obidxon/ui_9/screen/body.dart';

class HomePageUi9 extends StatelessWidget {
  const HomePageUi9({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: homeAppBar(context),
      body: BodyUi9(),
    );
  }
}

