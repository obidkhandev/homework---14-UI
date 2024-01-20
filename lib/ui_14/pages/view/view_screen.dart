import 'package:flutter/material.dart';

class ViewScreenUi14 extends StatelessWidget {
  const ViewScreenUi14({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: BackgroundImageViewScreen(size: size,
      child: Column(
        children: [

        ],
      ),
      ),
    );
  }
}

