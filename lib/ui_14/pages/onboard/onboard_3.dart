import 'package:flutter/material.dart';
import 'package:modul_4_homework_obidxon/ui_14/compotations.dart';
import 'package:modul_4_homework_obidxon/ui_14/pages/sing/sing_in_screen.dart';
import 'package:modul_4_homework_obidxon/ui_14/widget/my_tab_scroll.dart';
import 'package:modul_4_homework_obidxon/ui_14/pages/onboard/widgets/on_board_big_title.dart';
import 'package:modul_4_homework_obidxon/ui_14/pages/onboard/widgets/on_board_head.dart';
import 'package:modul_4_homework_obidxon/ui_14/pages/onboard/widgets/on_board_small_text.dart';
import 'package:modul_4_homework_obidxon/ui_14/widget/rounded_button.dart';

class ThirdOnBoardScreenUi14 extends StatelessWidget {
  const ThirdOnBoardScreenUi14({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
          OnBoardHeader(
            size: size,
            image:
                'assets/ui_14/images/252a6624a42c117099537c7a1320256d 1.png',
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
          const SizedBox(height: 30),
          const Text(
            'People don’t take trips,',
            style: kOnBoardTextSytle,
            textAlign: TextAlign.center,
          ),
          const OnBoardBigTitlUi14(
            image: 'assets/ui_14/images/Vector 2524 (1).png',
            actionText: 'people',
            blackText: 'trips take',
          ),
          const OnBoardSmallText(
            text:
                'To get the best of your adventure you just need to leave and go where you like. we are waiting for you',
          ),
          SizedBox(height: 30),
          const MyTabScroll(
            color1: kBgColorUi14,
            color3: kPrimaryColorUi14,
            color2: kBgColorUi14,
            width2: 13,
            width3: 35,
            width1: 6,
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
                    return SingInScreenUi14();
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
