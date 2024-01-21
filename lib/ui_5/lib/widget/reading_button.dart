import 'package:flutter/material.dart';
import 'package:modul_4_homework_obidxon/ui_5/lib/consttants.dart';


class ReadingButton extends StatelessWidget {
  final String text;
  final double verticalPadding;
  final double fontSize;
  final Function()? press;
  const ReadingButton({
    super.key,
    required this.text,
    this.verticalPadding = 16,
    this.fontSize = 16,
    this.press,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        alignment: Alignment.center,
        margin: const EdgeInsets.symmetric(vertical: 15),
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 15,
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30),
          boxShadow: [
            BoxShadow(
              offset: const Offset(0, 15),
              blurRadius: 30,
              color: kShadowColorUi5,
            ),
          ],
        ),
        child: Text(
          text,
          style: TextStyle(
            fontSize: fontSize,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}