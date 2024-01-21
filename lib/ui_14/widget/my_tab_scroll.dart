import 'package:flutter/material.dart';

class MyTabScroll extends StatelessWidget {
  final Color color1;
  final Color color2;
  final Color color3;
  final double width1;
  final double width2;
  final double width3;
  const MyTabScroll({
    super.key,
    required this.color1,
    required this.color2,
    required this.color3,
    required this.width1,
    required this.width2,
    required this.width3,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 7,
          width: width1,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: color1,
          ),
        ),
        const SizedBox(
          width: 5,
        ),
        Container(
          height: 7,
          width: width2,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: color2,
          ),
        ),
        const SizedBox(
          width: 5,
        ),
        Container(
          height: 7,
          width: width3,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: color3,
          ),
        ),
      ],
    );
  }
}
