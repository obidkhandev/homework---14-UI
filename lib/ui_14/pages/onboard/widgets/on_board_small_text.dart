import 'package:flutter/material.dart';
import 'package:modul_4_homework_obidxon/ui_14/compotations.dart';

class OnBoardSmallText extends StatelessWidget {
  final String text;
  const OnBoardSmallText({
    super.key, required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 50, right: 50, top: 20),
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: const TextStyle(
          color: kSubTextColorUi14,
          fontWeight: FontWeight.w400,
          fontSize: 16,
          fontFamily: "Gill Sans MT",
        ),
      ),
    );
  }
}
