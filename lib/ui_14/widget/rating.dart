import 'package:flutter/material.dart';
import 'package:modul_4_homework_obidxon/ui_1/constants.dart';
import 'package:modul_4_homework_obidxon/ui_14/compotations.dart';

class RatingUi14 extends StatelessWidget {
  final double score;
  final Color textColor;
  const RatingUi14({
    super.key,
    required this.score,
    this.textColor = kTextColor
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.star,
          color: Colors.amber,
          size: 15,
        ),
        Text(
          "$score",
          style: kSfUiSytle.copyWith(color: textColor),
        ),
      ],
    );
  }
}
