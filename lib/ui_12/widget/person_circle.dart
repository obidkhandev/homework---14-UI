import 'package:flutter/material.dart';
import 'package:modul_4_homework_obidxon/ui_3/constants.dart';

class PersonCircle extends StatelessWidget {
  const PersonCircle({
    super.key,
    
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 32,
      width: 32,
      margin: EdgeInsets.only(
        right: 12,
      ),
      decoration: BoxDecoration(
        color: kBackColor,
        shape: BoxShape.circle,
        image: DecorationImage(
          image: AssetImage('assets/ui_12/images/Ellipse 3 (1).png'),
        ),
      ),
    );
  }
}
