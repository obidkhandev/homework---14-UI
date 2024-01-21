import 'package:flutter/material.dart';
import 'package:modul_4_homework_obidxon/ui_14/compotations.dart';

class PostText extends StatelessWidget {
  final String text;
  final double rightMarjin;
  final double leftMarjin;
  final Color iconColor;
  final String time;
  final double bottomRight;
  final double bottomLeft;
  final double topLeft;
  final double topRight;
  final Color backgrounColor;

  const PostText({
    super.key,
    required this.text,
    this.rightMarjin = 20,
    this.leftMarjin = 20,
    this.iconColor = Colors.green,
    this.time = "Now",
    this.bottomRight = 8,
    this.bottomLeft = 8,
    this.topLeft = 8,
    this.topRight = 8,
    this.backgrounColor = kLightGrayColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: rightMarjin, left: leftMarjin, top: 5),
      alignment: Alignment.center,
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: backgrounColor,
        borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(bottomRight),
          bottomLeft: Radius.circular(bottomLeft),
          topLeft: Radius.circular(topLeft),
          topRight: Radius.circular(topLeft),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(
            text,
            style: kSfUiSytle.copyWith(color: kTextColorUi14, fontSize: 14),
            maxLines: 4,
          ),
          SizedBox(width: 20),
          Row(
            children: [
              Text(
                time,
                style: kSfUiSytle.copyWith(fontSize: 12),
              ),
              SizedBox(width: 5),
              Icon(
                Icons.done_all_rounded,
                color: iconColor,
                size: 14,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
