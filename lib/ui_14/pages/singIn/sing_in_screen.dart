import 'package:flutter/material.dart';
import 'package:modul_4_homework_obidxon/ui_14/compotations.dart';
import 'package:modul_4_homework_obidxon/ui_14/widget/arrow_icon.dart';

class SingInScreenUi14 extends StatelessWidget {
  const SingInScreenUi14({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(left: 20, right: 20, bottom: 40, top: 50),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              arrowIcon(context),
              SizedBox(
                height: 20,
              ),
              Text(
                'Sign in now',
                style: TextStyle(
                    fontFamily: 'SF UI Display',
                    fontSize: 26,
                    fontWeight: FontWeight.w400),
              ),
              SizedBox(height: 5),
              Text(
                'Please sign in to continue our app',
                style: TextStyle(
                    fontFamily: 'SF UI Display',
                    fontSize: 16,
                    color: kSubTextColorUi14,
                    fontWeight: FontWeight.w400),
              ),
              SizedBox(height: 20),
              EmailFieldContainer(
                size: size,
                child: TextField(
                  decoration: InputDecoration(border: InputBorder.none),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class EmailFieldContainer extends StatelessWidget {
  final Widget child;
  const EmailFieldContainer({
    super.key,
    required this.size,
    required this.child,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 20),
      alignment: Alignment.centerLeft,
      height: 56,
      width: size.width * 0.9,
      decoration: BoxDecoration(
        color: kLightGreyColor,
        borderRadius: BorderRadius.circular(14),
      ),
      child: child,
    );
  }
}
