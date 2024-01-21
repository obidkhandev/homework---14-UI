import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:modul_4_homework_obidxon/ui_3/constants.dart';
import 'package:modul_4_homework_obidxon/ui_8/components/rounded_button.dart';
import 'package:modul_4_homework_obidxon/ui_8/constants.dart';
import 'package:modul_4_homework_obidxon/ui_8/screen/login/login_screen.dart';
import 'package:modul_4_homework_obidxon/ui_8/screen/sing_up/singup_screen.dart';
import 'package:modul_4_homework_obidxon/ui_8/screen/welcome/background.dart';

class BodyUi8 extends StatelessWidget {
  const BodyUi8({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Welcome to Edu'.toUpperCase(),
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: size.height * 0.03,
          ),
          SvgPicture.asset(
            'assets/ui_8/icons/chat.svg',
            height: size.height * 0.45,
          ),
          SizedBox(height: size.height * 0.045),
          RoundedButtonUi8(
            text: 'login',
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return const LoginScreenUi8();
                },),
              );
            },
          ),
          RoundedButtonUi8(
            text: 'singUp',
            textColor: kBackColor,
            color: kPrimaryLightColorUi8,
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return const SingUpUi8();
                },),
              );
            },
          ),
        ],
      ),
    );
  }
}
