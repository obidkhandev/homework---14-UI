import 'package:flutter/material.dart';
import 'package:modul_4_homework_obidxon/ui_8/screen/login/body.dart';

class LoginScreenUi8 extends StatelessWidget {
  const LoginScreenUi8({super.key});

  @override
  Widget build(BuildContext context) {
    // Size size = MediaQuery.of(context).size;
    return const Scaffold(
      body: SingleChildScrollView(child: LoginBodyUi8()),
    );
  }
}

