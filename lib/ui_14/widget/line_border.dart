import 'package:flutter/material.dart';
import 'package:modul_4_homework_obidxon/ui_14/compotations.dart';

class LineBorder extends StatelessWidget {
  final double height;
  final double width;
  const LineBorder({
    super.key,
    this.height = 80,
    this.width = 0,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        border: Border.all(
          color: kLightGrayColor,
          width: 1.5,
        ),
      ),
    );
  }
}
