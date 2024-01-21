import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:modul_4_homework_obidxon/ui_6/lib/constants.dart';


class BottomNavItemUi6 extends StatelessWidget {
  final String title;
  final String svgImg;
  final Function()? press;
  final bool isActivate;
  const BottomNavItemUi6({
    super.key,
    required this.title,
    this.isActivate = false,
    this.press,
    required this.svgImg,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SvgPicture.asset(svgImg),
          Text(
            title,
            style: TextStyle(
              color: isActivate ? kActiveIconColorUi6 : kTextColorUi6,
            ),
          )
        ],
      ),
    );
  }
}
