import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:modul_4_homework_obidxon/ui_8/components/rounded_button.dart';
import 'package:modul_4_homework_obidxon/ui_8/constants.dart';
import 'package:modul_4_homework_obidxon/ui_8/screen/login/login_screen.dart';
import 'package:modul_4_homework_obidxon/ui_8/screen/sing_up/backround.dart';
import 'package:modul_4_homework_obidxon/ui_8/screen/sing_up/local_icon.dart';
import 'package:modul_4_homework_obidxon/ui_8/screen/sing_up/or_divider.dart';
import 'package:modul_4_homework_obidxon/ui_8/widget/already_have_an_account.dart';
import 'package:modul_4_homework_obidxon/ui_8/widget/rounded_input_field.dart';
import 'package:modul_4_homework_obidxon/ui_8/widget/rounded_password_field.dart';

class SingUpBodyUi8 extends StatelessWidget {
  final Widget child;
  const SingUpBodyUi8({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: SingUpBackgroundUi8(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'SingUp'.toUpperCase(),
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
            SvgPicture.asset(
              'assets/ui_8/icons/signup.svg',
              height: size.height * 0.35,
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
            RoundedInputField(
              hintText: 'Your Email',
              onChanged: (value) {},
            ),
            RoundedPasswordField(onChanged: (value) {}),
            RoundedButtonUi8(
              text: 'SingUp'.toUpperCase(),
              press: () {},
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
            AlReadyAnAccountCheck(
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return LoginScreenUi8();
                    },
                  ),
                );
              },
              login: false,
            ),
            OrDividerUi8(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                LocalIcon(
                  imgIcon: 'assets/ui_8/icons/facebook.svg',
                ),
                LocalIcon(
                  imgIcon: 'assets/ui_8/icons/twitter.svg',
                ),
                LocalIcon(
                  imgIcon: 'assets/ui_8/icons/google-plus.svg',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

