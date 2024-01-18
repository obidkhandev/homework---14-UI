import 'package:flutter/material.dart';
import 'package:modul_4_homework_obidxon/ui_14/compotations.dart';

class OnBoardBigTitlUi14 extends StatelessWidget {
  final String actionText;
  final String blackText;
  final String image;
  const OnBoardBigTitlUi14({
    super.key,
    required this.actionText,
    required this.blackText,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '$blackText ',
          style: kOnBoardTextSytle,
          textAlign: TextAlign.center,
        ),
        Column(
          children: [
            Text(
              actionText,
              style: kOnBoardTextSytle.copyWith(color: kActionColorUi14),
              textAlign: TextAlign.center,
            ),
            Image.asset(
              image,
            ),
          ],
        ),
      ],
    );
  }
}
