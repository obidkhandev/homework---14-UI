// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:modul_4_homework_obidxon/ui_14/compotations.dart';
import 'package:modul_4_homework_obidxon/ui_14/pages/onboard/onboard_2.dart';
import 'package:modul_4_homework_obidxon/ui_14/pages/sing/sing_in_screen.dart';
import 'package:modul_4_homework_obidxon/ui_14/widget/my_tab_scroll.dart';
import 'package:modul_4_homework_obidxon/ui_14/pages/onboard/widgets/on_board_big_title.dart';
import 'package:modul_4_homework_obidxon/ui_14/pages/onboard/widgets/on_board_head.dart';
import 'package:modul_4_homework_obidxon/ui_14/pages/onboard/widgets/on_board_small_text.dart';
import 'package:modul_4_homework_obidxon/ui_14/widget/rounded_button.dart';

class FirstOnBoardScreenUi14 extends StatelessWidget {
  const FirstOnBoardScreenUi14({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
          OnBoardHeader(
            size: size,
            image: 'assets/ui_14/images/afbea499038243 1.png',
            skipPress: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return SingInScreenUi14();
                  },
                ),
              );
            },
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            'Life is short and the',
            style: kOnBoardTextSytle,
            textAlign: TextAlign.center,
          ),
          OnBoardBigTitlUi14(
              image: 'assets/ui_14/images/Vector 2524.png',
              actionText: 'wide',
              blackText: 'world is'),
          OnBoardSmallText(
            text:'At Friends tours and travel, we customize reliable and trutworthy educational tours to destinations all over the world',
          ),
          SizedBox(
            height: 30,
          ),
          MyTabScroll(
            color1: kPrimaryColorUi14,
            color2: kBgColorUi14,
            color3: kBgColorUi14,
            width1: 35,
            width2: 13,
            width3: 6,
          ),
          Spacer(),
          RoundedButtonUi14(
            size: size,
            text: 'Get Started',
            vertical: 30,
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return SecondOnBoardScreenUi14();
                  },
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

