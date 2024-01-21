import 'package:flutter/material.dart';
import 'package:modul_4_homework_obidxon/ui_13/constants.dart';

class MyRichText extends StatelessWidget {
  final String firstText;
  final String secondText;
  const MyRichText({
    super.key,
    required this.firstText,
    required this.secondText,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        style: const TextStyle(
            fontWeight: FontWeight.w600, fontSize: 16, color: Colors.black),
        children: [
          TextSpan(text: firstText),
          TextSpan(
            text: secondText,
            style: const TextStyle(color: kPrimaryColorUi13),
          ),
        ],
      ),
    );
  }
}
