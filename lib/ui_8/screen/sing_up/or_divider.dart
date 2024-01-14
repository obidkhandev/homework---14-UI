import 'package:flutter/material.dart';
import 'package:modul_4_homework_obidxon/ui_8/constants.dart';

class OrDividerUi8 extends StatelessWidget {
  const OrDividerUi8({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: size.height * 0.02),
      width: size.width * 0.8,
      child: Row(
        children: [
          buildDivider(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
          ),
          Text(
            'OR',
            style: TextStyle(
              color: kPrimaryColorUi8,
              fontWeight: FontWeight.w600,
            ),
          ),
          buildDivider(),
        ],
      ),
    );
  }

  Expanded buildDivider() {
    return Expanded(
      child: Divider(
        color: Color(0xFFD9D9D9),
        height: 1.5,
      ),
    );
  }
}
