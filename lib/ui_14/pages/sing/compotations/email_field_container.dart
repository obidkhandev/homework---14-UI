import 'package:flutter/material.dart';
import 'package:modul_4_homework_obidxon/ui_14/compotations.dart';

class EmailFieldContainer extends StatelessWidget {
  final Widget child;
  const EmailFieldContainer({
    super.key,
    required this.size,
    required this.child,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 30),
      padding: const EdgeInsets.only(left: 20),
      alignment: Alignment.centerLeft,
      height: 56,
      width: size.width * 0.9,
      decoration: BoxDecoration(
        color: kLightGrayColor,
        borderRadius: BorderRadius.circular(14),
      ),
      child: child,
    );
  }
}
