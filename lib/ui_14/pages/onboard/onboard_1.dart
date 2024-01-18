// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:modul_4_homework_obidxon/ui_14/compotations.dart';
import 'package:modul_4_homework_obidxon/ui_14/widget/my_tab_scroll.dart';
import 'package:modul_4_homework_obidxon/ui_14/widget/rounded_button.dart';

class FirstOnBoardScreenUi14 extends StatelessWidget {
  const FirstOnBoardScreenUi14({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(bottom: 30),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(right: 20, top: 50),
              height: size.height * 0.5,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(30),
                  bottomLeft: Radius.circular(30),
                ),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/ui_14/images/afbea499038243 1.png'),
                ),
              ),
              child: GestureDetector(
                onTap: () {},
                child: Text(
                  'Skip',
                  style: TextStyle(
                    color: Color.fromRGBO(202, 234, 255, 1),
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                  ),
                  textAlign: TextAlign.right,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            // RichText(
            //   textAlign: TextAlign.center,
            //   text: TextSpan(
            //     style: kOnBoardTextSytle,
            //     children: [
            //       TextSpan(
            //         text: 'Life is short and the\nworld is ',
            //       ),
            //       TextSpan(
            //         text: 'wide',
            //         style: TextStyle(color: kActionColorUi14),
            //       )
            //     ],
            //   ),
            // ),
            Text(
              'Life is short and the',
              style: kOnBoardTextSytle,
              textAlign: TextAlign.center,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'world is ',
                  style: kOnBoardTextSytle,
                  textAlign: TextAlign.center,
                ),
                Text(
                  'wide',
                  style: kOnBoardTextSytle.copyWith(color: kActionColorUi14),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
            Image.asset(
              'assets/ui_14/images/Vector 2524.png',
              alignment: Alignment.center,
            ),

            Padding(
              padding: const EdgeInsets.only(left: 30, right: 30, top: 20),
              child: Text(
                'At Friends tours and travel, we customize reliable and trutworthy educational tours to destinations all over the world',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: kSubTextColorUi14,
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                  fontFamily: "Gill Sans MT",
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            MyTabScroll(
              color1: kPrimaryColorUi14,
              color2: kBgColorUi14,
              color3: kBgColorUi14,
              width1: 35,
              width2: 13,
              width3: 6,
            ),
            Spacer(),
            RoundedButtonUi14(
              size: size,
              text: 'Get Started',
              press: () {},
            ),
          ],
        ),
      ),
    );
  }
}

