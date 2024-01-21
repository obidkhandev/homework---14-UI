import 'package:flutter/material.dart';
import 'package:modul_4_homework_obidxon/ui_1/constants.dart';
import 'package:modul_4_homework_obidxon/ui_14/compotations.dart';

class RatingUi14 extends StatelessWidget {
  final double score;
  final Color textColor;
  final int starCount;
  const RatingUi14(
      {super.key,
      required this.score,
      this.textColor = kTextColor,
      this.starCount = 1});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        for (int i = 0; i < starCount;i++)
          const Icon(
            Icons.star,
            color: Colors.amber,
            size: 15,
          ),
          const SizedBox(width: 5),
        Text(
          "$score",
          style: kSfUiSytle.copyWith(color: textColor),
        ),
      ],
    );
  }
}
