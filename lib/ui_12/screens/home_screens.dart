import 'package:flutter/material.dart';
import 'package:modul_4_homework_obidxon/ui_12/compatations.dart';
import 'package:modul_4_homework_obidxon/ui_12/screens/home_page_body.dart';
import 'package:modul_4_homework_obidxon/ui_12/widget/bottom_nav_bar.dart';
import 'package:modul_4_homework_obidxon/ui_12/widget/person_circle.dart';
import 'package:modul_4_homework_obidxon/ui_3/constants.dart';

class HomePageUi12 extends StatelessWidget {
  const HomePageUi12({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: const BottomNavBar(),
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.menu,
            weight: 24,
            color: kBackColor,
          ),
        ),
        title: const Text(
          'bagzz',
        ),
        titleTextStyle: kPlayfairDisplay,
        actions: const [
          PersonCircle(),
        ],
      ),
      body:const  HomePageBody()
    );
  }
}
