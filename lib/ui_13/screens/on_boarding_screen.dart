import 'package:flutter/material.dart';
import 'package:modul_4_homework_obidxon/ui_13/constants.dart';
import 'package:modul_4_homework_obidxon/ui_13/screens/onboard_background.dart';
import 'package:modul_4_homework_obidxon/ui_13/screens/sing_up_screen.dart';
import 'package:modul_4_homework_obidxon/ui_13/widget/rounded_button.dart';

class OnBoardingScreenUi13 extends StatelessWidget {
  const OnBoardingScreenUi13({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return OnBoardBackroundUi13(
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/ui_13/images/chat.png',
                height: 60,
                width: 63,
              ),
              SizedBox(width: 10),
              Text(
                'EduVerse',
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 28,
                    color: kPrimaryLightColorUi13),
              ),
            ],
          ),
          SizedBox(
            height: size.height * .01,
          ),
          Text(
            'Empowering Minds, Igniting Futures.',
            style: TextStyle(fontWeight: FontWeight.w400, fontSize: 16),
          ),
          SizedBox(height: size.height * 0.05),
          RoundedButtonUi13(
            text: 'Get Started',
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return SingUpScreenUi13();
                  },
                ),
              );
            },
          ),
          Expanded(
              child: Image.asset(
            'assets/ui_13/images/lesson.png',
            height: 177,
            fit: BoxFit.fitWidth,
            width: double.infinity,
            alignment: Alignment.bottomCenter,
          )),
        ],
      ),
    );
  }
}
