import 'package:flutter/material.dart';

class CircleSmallButtonUi14 extends StatelessWidget {
  final Color backgroundColor;
  final double width;
  final double height;
  final IconData icon;
  final Color iconColor;
  final double iconSize;
  final Function()? press;
  const CircleSmallButtonUi14({
    super.key,
    required this.backgroundColor,
    this.width = 34,
    this.height = 34,
    required this.icon,
    this.press,
    this.iconSize = 20,
    required this.iconColor,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        alignment: Alignment.center,
        height: 34,
        width: 34,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: backgroundColor,
        ),
        child: Icon(
          icon,
          color: iconColor,
          size: iconSize,
        ),
      ),
    );
  }
}
