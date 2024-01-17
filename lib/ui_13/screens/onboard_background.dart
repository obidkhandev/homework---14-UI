import 'package:flutter/material.dart';
import 'package:modul_4_homework_obidxon/ui_13/constants.dart';

class OnBoardBackroundUi13 extends StatelessWidget {
  final Widget child;
  const OnBoardBackroundUi13({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: size.height * 0.3),
        height: size.height,
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: konBoardingBackColorUI13,
          ),
        ),
        child: child,
      ),
    );
  }
}
