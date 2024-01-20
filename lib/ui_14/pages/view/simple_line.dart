
import 'package:flutter/material.dart';
import 'package:modul_4_homework_obidxon/ui_14/compotations.dart';

class SimleLineUi14 extends StatelessWidget {
  final double left;
  const SimleLineUi14({
    super.key,
    this.left = 311,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: left),
      height: 50,
      width: 2,
      decoration: BoxDecoration(
        color: kViewContainerColorUi14,
        borderRadius: BorderRadius.circular(20),
      ),
    );
  }
}
