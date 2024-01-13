import 'package:flutter/material.dart';
import 'package:modul_4_homework_obidxon/ui_12/compatations.dart';
import 'package:modul_4_homework_obidxon/ui_3/constants.dart';

class ButtonAddCard extends StatelessWidget {
  final String title;
  final Function()? press;
  final double width;
  final double height;
  const ButtonAddCard({
    super.key,
    required this.title,
    this.press,
    required this.width,
    required this.height,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Center(
        child: Container(
          alignment: Alignment.center,
          height: height,
          width: width,
          color: kBackColor,
          child: Text(
            title.toUpperCase(),
            style: kWorkSansBlack.copyWith(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
