import 'package:flutter/material.dart';
import 'package:modul_4_homework_obidxon/ui_14/compotations.dart';

class CircleUi14 extends StatelessWidget {
  final double left;
  const CircleUi14({
    super.key,
    this.left = 300,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: left),
      height: 24,
      width: 24,
      padding: const EdgeInsets.all(6),
      decoration: BoxDecoration(
          color: kViewContainerColorUi14.withOpacity(.9),
          shape: BoxShape.circle),
      child: Container(
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: kPrimaryColorUi14,
        ),
      ),
    );
  }
}
