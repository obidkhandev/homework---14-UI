
import 'package:flutter/material.dart';
import 'package:modul_4_homework_obidxon/ui_14/compotations.dart';

class MyRichTextSingPage extends StatelessWidget {
  final String fristText;
  final String secondText;
  final Function()? press;
  const MyRichTextSingPage({
    super.key,
    required this.fristText,
    required this.secondText, this.press,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      // crossAxisAlignment: ,
      children: [
        Text(
          fristText,
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
            secondText,
            style: TextStyle(
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
