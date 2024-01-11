import 'package:flutter/material.dart';
import 'package:modul_4_homework_obidxon/ui_2/constant.dart';

class Counter extends StatelessWidget {
  final Color color;
  final int number;
  final String title;
  const Counter({
    super.key,
    required this.color,
    required this.number,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(5),
          height: 20,
          width: 20,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: color.withOpacity(.25),
          ),
          child: Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.transparent,
              border: Border.all(
                color: color,
                width: 2,
              ),
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          '$number',
          style: TextStyle(color: color, fontSize: 30),
        ),
        Text(
          title,
          style: kSubTextstyle,
        )
      ],
    );
  }
}
