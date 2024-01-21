import 'dart:async';

import 'package:flutter/material.dart';
import 'package:modul_4_homework_obidxon/ui_14/pages/onboard/onboard_1.dart';

class SplashScreenUi14 extends StatefulWidget {
  const SplashScreenUi14({super.key});

  @override
  State<SplashScreenUi14> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreenUi14>
    with TickerProviderStateMixin {
  late Animation<double> animation;
  late AnimationController controller;
  Future<void> _loaderResourse() async {}

  @override
  void initState() {
    super.initState();
    _loaderResourse();
    controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 3),
    )..forward();
    animation = CurvedAnimation(parent: controller, curve: Curves.linear);

    Timer(
      const Duration(seconds: 3),
      () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return const FirstOnBoardScreenUi14();
            },
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ScaleTransition(
            scale: animation,
            child: const Center(
              child: Text(
                'Travenor',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 32,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
