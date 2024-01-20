import 'package:flutter/material.dart';
import 'package:modul_4_homework_obidxon/ui_14/compotations.dart';

GestureDetector arrowIcon(BuildContext context) {
  return GestureDetector(
    onTap: () {
      Navigator.pop(context);
    },
    child: Align(
      alignment: Alignment.topLeft,
      child: Container(
        height: 44,
        width: 44,
        decoration: BoxDecoration(
          color: kLightGrayColor,
          shape: BoxShape.circle,
        ),
        child: Icon(Icons.arrow_back_ios_new,size: 18,),
      ),
    ),
  );
}
