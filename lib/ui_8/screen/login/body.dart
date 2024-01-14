import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:modul_4_homework_obidxon/ui_8/components/rounded_button.dart';
import 'package:modul_4_homework_obidxon/ui_8/constants.dart';
import 'package:modul_4_homework_obidxon/ui_8/screen/login/background.dart';
import 'package:modul_4_homework_obidxon/ui_8/widget/already_have_an_account.dart';
import 'package:modul_4_homework_obidxon/ui_8/widget/rounded_input_field.dart';
import 'package:modul_4_homework_obidxon/ui_8/widget/text_field_container.dart';

import '../../widget/rounded_password_field.dart';

class LoginBodyUi8 extends StatelessWidget {
  const LoginBodyUi8({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    // Size size = MediaQuery.of(context).size;
    return BackgroundUi8(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Login',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          SvgPicture.asset('assets/ui_8/icons/login.svg'),
          RoundedInputField(
            hintText: 'Your Email',
            onChanged: (value) {},
          ),
          RoundedPasswordField(
            onChanged: (value) {},
          ),
          RoundedButtonUi8(text: 'Login', press: () {}),
          AlReadyAnAccountCheck(
            press: (){},
          ),
        ],
      ),
    );
  }
}

