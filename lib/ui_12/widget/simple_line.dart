import 'package:flutter/material.dart';
import 'package:modul_4_homework_obidxon/ui_3/constants.dart';

class SimpleLine extends StatelessWidget {
  final double height;
  final double width;
  final double verticalMarjin;
  const SimpleLine({
    super.key,
    required this.height,
    required this.width,  this.verticalMarjin = 30,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: verticalMarjin),
      height: height,
      width: width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(22),
        color: kBackColor,
      ),
    );
  }
}
