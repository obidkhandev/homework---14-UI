import 'package:flutter/material.dart';
import 'package:modul_4_homework_obidxon/ui_12/compatations.dart';
import 'package:modul_4_homework_obidxon/ui_3/constants.dart';

class CategoryBagCard extends StatelessWidget {
  final String image;
  final String text;
  const CategoryBagCard({
    super.key,
    required this.image,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 254,
      width: 170,
      alignment: Alignment.bottomRight,
      decoration: BoxDecoration(
        color: Colors.white,
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage(
            image,
          ),
        ),
      ),
      child: Container(
        height: 38,
        width: 140,
        // margin: EdgeInsets.only(right: 0,bottom: 0,left: 50,top: 140),
        alignment: Alignment.center,
        color: kBackColor,
        child: Text(
          text,
          style: kPlayfairDisplay.copyWith(
            color: Colors.white,
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}
