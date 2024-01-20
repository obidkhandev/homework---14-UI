import 'package:flutter/material.dart';

class BackgroundImageViewScreen extends StatelessWidget {
  final Widget child;
  const BackgroundImageViewScreen({
    super.key,
    required this.size,
    required this.child,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.only(top: 56,left: 0,right: 0,bottom: 30),
        // height: size.height,
        width: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
          fit: BoxFit.cover,
          image:
              AssetImage("assets/ui_14/images/32badb63498577.5ab28d9d515ac.png"),
        ),),
        child: child,
      ),
    );
  }
}
