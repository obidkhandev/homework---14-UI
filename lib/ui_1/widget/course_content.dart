import 'package:flutter/material.dart';
import 'package:modul_4_homework_obidxon/ui_1/constants.dart';

class CourseContent extends StatelessWidget {
  final String title;
  final double time;
  final bool isDone;
  final String number;

  const CourseContent({
    super.key,
    required this.title,
    required this.time,
    this.isDone = false,
    required this.number,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Row(
        children: [
          Text(
            number,
            style: kHeadingextStyle.copyWith(
                fontSize: 32, color: kTextColor.withOpacity(.3)),
          ),
          const SizedBox(
            width: 10,
          ),
          RichText(
              text: TextSpan(
            children: [
              TextSpan(
                  text: '$time min\n',
                  style: TextStyle(
                      fontSize: 18, color: kTextColor.withOpacity(.5))),
              TextSpan(
                  text: title,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: kTextColor)),
            ],
          )),
          const Spacer(),
          Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.green.withOpacity(isDone ? 1 : 0.5)),
            child: const Icon(
              Icons.play_arrow,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}