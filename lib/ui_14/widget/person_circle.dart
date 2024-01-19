import 'package:flutter/material.dart';

class PersonCircleUi14 extends StatelessWidget {
  final double width;
  final double height;
  final String image;
  final Color color;
  const PersonCircleUi14({
    super.key,
    this.width = 37,
    this.height = 37,
    required this.color,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: color,
        image: DecorationImage(
          image: AssetImage(image),
        ),
      ),
    );
  }
}
