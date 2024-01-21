import 'package:flutter/material.dart';
import 'package:modul_4_homework_obidxon/ui_14/compotations.dart';

class EmailFieldContainer extends StatelessWidget {
  final Widget child;
  final Color color;
  final double sizeWidth;
  final double height;
  const EmailFieldContainer(
      {super.key,
      required this.child,
      this.color = kLightGrayColor,
      this.sizeWidth = 0.9,
      this.height = 56
      });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.only(top: 30),
      padding: const EdgeInsets.only(left: 20, right: 10),
      alignment: Alignment.centerLeft,
      height: height,
      width: size.width * sizeWidth,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(14),
      ),
      child: child,
    );
  }
}
