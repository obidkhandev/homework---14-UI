import 'package:flutter/material.dart';

class OnBoardHeader extends StatelessWidget {
  final String image;
  final Function()? skipPress;

  const OnBoardHeader({
    super.key,
    required this.size,
    required this.image,
    this.skipPress,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(right: 20, top: 50),
      height: size.height * 0.53,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.only(
          bottomRight: Radius.circular(30),
          bottomLeft: Radius.circular(30),
        ),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(image),
        ),
      ),
      child: GestureDetector(
        onTap: skipPress,
        child: const Text(
          'Skip',
          style: TextStyle(
            color: Color.fromRGBO(202, 234, 255, 1),
            fontSize: 18,
            fontWeight: FontWeight.w400,
          ),
          textAlign: TextAlign.right,
        ),
      ),
    );
  }
}
