import 'package:flutter/material.dart';
import 'package:modul_4_homework_obidxon/ui_14/compotations.dart';

class MyRichTextSingPage extends StatelessWidget {
  final bool isHaveAccount;
  final Function()? press;
  const MyRichTextSingPage({
    super.key,
    
    this.press, this.isHaveAccount = false,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      // crossAxisAlignment: ,
      children: [
        Text(
          isHaveAccount? "Don’t have an account?": "Already have an account",
          style: const TextStyle(
            fontFamily: "SF UI Display",
            fontWeight: FontWeight.w500,
            fontSize: 14,
            color: kSubTextColorUi14,
          ),
        ),
        TextButton(
          onPressed: press,
          child: Text(
            isHaveAccount? "Sing Up" : "Sing In",
            style: const TextStyle(
              fontFamily: "SF UI Display",
              fontWeight: FontWeight.w500,
              fontSize: 14,
              color: kPrimaryColorUi14,
            ),
          ),
        ),
      ],
    );
  }
}
