// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:modul_4_homework_obidxon/ui_8/constants.dart';

class LocalIcon extends StatelessWidget {
  final String imgIcon;
  final Function()? press;
  const LocalIcon({
    super.key,
    required this.imgIcon,
    this.press,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        padding: const EdgeInsets.all(20),
        margin: const EdgeInsets.symmetric(horizontal: 10),
        decoration: BoxDecoration(
          border: Border.all(
            width: 2,
            color: kPrimaryLightColorUi8,
          ),
          shape: BoxShape.circle,
        ),
        child: SvgPicture.asset(
          imgIcon,
          color: kPrimaryColorUi8,
          width: 20,
          height: 20,
        ),
      ),
    );
  }
}
