import 'package:flutter/material.dart';
import 'package:modul_4_homework_obidxon/ui_8/constants.dart';

class AlReadyAnAccountCheck extends StatelessWidget {
  final bool login;
  final Function() press;
  const AlReadyAnAccountCheck({
    super.key,
    this.login = true,
    required this.press,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          login? 'Don\'t have an account ? ': 'Already have an Account',
          style: TextStyle(color: kPrimaryColorUi8),
        ),
        GestureDetector(
            onTap: press,
            child: Text(
              login ? 'Sing Up' : 'Sing In',
              style: TextStyle(
                color: kPrimaryColorUi8,
                fontWeight: FontWeight.bold,
              ),
            ))
      ],
    );
  }
}
