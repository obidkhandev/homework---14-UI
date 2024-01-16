import 'package:flutter/material.dart';

class ItemImageUi9 extends StatelessWidget {
  final String imgSvg;
  const ItemImageUi9({
    super.key, required this.imgSvg,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Image.asset(
      imgSvg,
      height: size.height * 0.25,
      width: double.infinity,
      fit: BoxFit.fill,
    );
  }
}
