import 'package:flutter/material.dart';


class BackgroundUi8 extends StatelessWidget {
  final Widget child;
  const BackgroundUi8({
    required this.child,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      height: size.height,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            left: 0,
            top: 0,
            child: Image.asset(
              'assets/ui_8/images/main_top.png',
              width: size.width * 0.3,
            ),
          ),
          Positioned(
            right: 0,
            bottom: 0,
            child: Image.asset(
              'assets/ui_8/images/login_bottom.png',
              width: size.width * 0.4,
            ),
          ),
          child,
        ],
      ),
    );
  }
}
