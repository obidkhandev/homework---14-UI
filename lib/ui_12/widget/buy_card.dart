import 'package:flutter/material.dart';
import 'package:modul_4_homework_obidxon/ui_3/constants.dart';

class BuyCard extends StatelessWidget {
  const BuyCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 10, left: 22, bottom: 30),
      height: 450,
      width: 345,
      decoration:const  BoxDecoration(
        color: Color.fromRGBO(255, 255, 255, 0.9),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Container(
              height: 2,
              width: 125,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(22),
                color: kBackColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
