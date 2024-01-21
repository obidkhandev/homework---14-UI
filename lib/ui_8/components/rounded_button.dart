import 'package:flutter/material.dart';
import 'package:modul_4_homework_obidxon/ui_8/constants.dart';

class RoundedButtonUi8 extends StatelessWidget {
  final String text;
  final Function() press;
  final Color color, textColor;
  const RoundedButtonUi8({
    super.key,
    required this.text,
    required this.press,
    this.color = kPrimaryColorUi8,
    this.textColor = Colors.white,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: press,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 10),
        width: size.width * 0.8,
        alignment: Alignment.center,
        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(29),
          color: color,
        ),
        child: Text(
          text.toUpperCase(),
          style: TextStyle(color: textColor),
        ),
      ),
    );
  }
}
