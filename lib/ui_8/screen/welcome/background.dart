import 'package:flutter/material.dart';



class Background extends StatelessWidget {
  final Widget child;
  const Background({
    required this.child,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      width: double.infinity,
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
            left: 0,
            bottom: 0,
            child: Image.asset(
              'assets/ui_8/images/main_bottom.png',
              width: size.width * 0.2,
            ),
          ),
          child,
        ],
      ),
    );
  }
}
