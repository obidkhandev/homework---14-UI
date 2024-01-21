import 'package:flutter/material.dart';
import 'package:modul_4_homework_obidxon/ui_14/compotations.dart';

class RichText2 extends StatelessWidget {
  final String textOne;
  final String textTwo;
  const RichText2({
    super.key,
    required this.textOne,
    required this.textTwo,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        style: kSfUiSytle.copyWith(
          color: kTextColorUi14,
          fontSize: 16,
        ),
        children: [
          TextSpan(
            text: "$textOne\n\n",
          ),
          TextSpan(
            text: textTwo,
            style: const TextStyle(
              color: kPrimaryColorUi14,
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}

