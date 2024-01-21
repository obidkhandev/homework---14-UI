import 'package:flutter/material.dart';
import 'package:modul_4_homework_obidxon/ui_14/compotations.dart';
import 'package:modul_4_homework_obidxon/ui_14/pages/onboard/onboard_3.dart';
import 'package:modul_4_homework_obidxon/ui_14/pages/sing/sing_in_screen.dart';
import 'package:modul_4_homework_obidxon/ui_14/widget/my_tab_scroll.dart';
import 'package:modul_4_homework_obidxon/ui_14/pages/onboard/widgets/on_board_big_title.dart';
import 'package:modul_4_homework_obidxon/ui_14/pages/onboard/widgets/on_board_head.dart';
import 'package:modul_4_homework_obidxon/ui_14/pages/onboard/widgets/on_board_small_text.dart';
import 'package:modul_4_homework_obidxon/ui_14/widget/rounded_button.dart';

class SecondOnBoardScreenUi14 extends StatelessWidget {
  const SecondOnBoardScreenUi14({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
          OnBoardHeader(
            size: size,
            image: 'assets/ui_14/images/7f47f9144194941 1.png',
            skipPress: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const SingInScreenUi14();
                  },
                ),
              );
            },
          ),
          const SizedBox(
            height: 30
          ),
          const Text(
            'It’s a big world out',
            style: kOnBoardTextSytle,
            textAlign: TextAlign.center,
          ),
          const OnBoardBigTitlUi14(
            image: 'assets/ui_14/images/Vector 2524 (1).png',
            actionText: 'explore',
            blackText: 'there go',
          ),
          const OnBoardSmallText(
              text:
                  'To get the best of your adventure you just need to leave and go where you like. we are waiting for you'),
          const SizedBox(
            height: 30,
          ),
          const MyTabScroll(
            color1: kBgColorUi14,
            color2: kPrimaryColorUi14,
            color3: kBgColorUi14,
            width1: 13,
            width2: 35,
            width3: 6,
          ),
          const Spacer(),
          RoundedButtonUi14(
            size: size,
            text: 'Next',
            vertical: 30,
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const ThirdOnBoardScreenUi14();
                  },
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
