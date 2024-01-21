import 'package:flutter/material.dart';
import 'package:modul_4_homework_obidxon/ui_12/screens/home_page_body.dart';
import 'package:modul_4_homework_obidxon/ui_12/widget/open_card.dart';

class HomeCardOpenScreenUi12 extends StatelessWidget {
  const HomeCardOpenScreenUi12({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Stack(
        children: [
          HomePageBody(),
          Positioned(
            left: 12,
            right: 12,
            bottom: 0,
            child: OpenCard(),
          ),
        ],
      ),
    );
  }
}