import 'package:flutter/material.dart';
import 'package:modul_4_homework_obidxon/ui_5/lib/consttants.dart';

class TwoSideRoundedButton extends StatelessWidget {
  final String text;
  final double radious;
  final Function()? press;
  const TwoSideRoundedButton({
    super.key,
    required this.text,
    this.radious = 30,
    this.press,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.symmetric(vertical: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(radious), bottomRight: Radius.circular(radious),),
          color: kBlackColorUi5,
        ),
        child: Text(
          text,
          style: const TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
