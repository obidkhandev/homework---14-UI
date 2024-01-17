import 'package:flutter/material.dart';
import 'package:modul_4_homework_obidxon/ui_13/constants.dart';

class RoundedButtonUi13 extends StatelessWidget {
  final Function()? press;
  final String text;
  const RoundedButtonUi13({super.key, this.press, required this.text});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: press,
      child: Container(
        height: 56,
        width: size.width * 0.8,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: kPrimaryColorUi13,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Text(
          text,
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
