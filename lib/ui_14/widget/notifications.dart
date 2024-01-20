import 'package:flutter/material.dart';
import 'package:modul_4_homework_obidxon/ui_14/compotations.dart';

class MyNotifications extends StatelessWidget {
  final double marjinRight;
  const MyNotifications({
    super.key,
    this.marjinRight = 20,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: marjinRight),
      height: 44,
      width: 44,
      padding: const EdgeInsets.all(5),
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        color: kLightGrayColor,
        image: DecorationImage(
          image: AssetImage("assets/ui_14/images/Notifications.png"),
        ),
      ),
    );
  }
}
