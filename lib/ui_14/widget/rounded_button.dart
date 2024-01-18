import 'package:flutter/material.dart';
import 'package:modul_4_homework_obidxon/ui_14/compotations.dart';

class RoundedButtonUi14 extends StatelessWidget {
  final String text;
  final Function()? press;
  const RoundedButtonUi14({
    super.key,
    required this.size,
    required this.text,
    this.press,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        alignment: Alignment.center,
        height: 56,
        width: size.width * 0.8,
        decoration: BoxDecoration(
            color: kPrimaryColorUi14, borderRadius: BorderRadius.circular(16)),
        child: Text(
          text,
          style: TextStyle(
            fontFamily: "SF UI Display",
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
