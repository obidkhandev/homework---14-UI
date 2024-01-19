import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:modul_4_homework_obidxon/ui_14/compotations.dart';
import 'package:modul_4_homework_obidxon/ui_14/widget/arrow_icon.dart';
import 'package:modul_4_homework_obidxon/ui_14/widget/rounded_button.dart';

class VerificationScreen extends StatelessWidget {
  const VerificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(left: 20, right: 20, top: 50),
        child: Column(
          children: [
            arrowIcon(context),
            SizedBox(height: 20),
            const Text(
              "OTP Verification",
              style: TextStyle(
                fontFamily: 'SF UI Display',
                fontSize: 26,
                fontWeight: FontWeight.w400,
              ),
            ),
            const SizedBox(height: 5),
            const Text(
              "Please check your email www.uihut@gmail.com to see the verification code",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'SF UI Display',
                fontSize: 16,
                color: kSubTextColorUi14,
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(height: 30),
            Align(
              alignment: Alignment.centerLeft,
              child: const Text(
                "OTP Code",
                style: TextStyle(
                  fontFamily: 'SF UI Display',
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                for (int i = 0; i < 4; i++)
                  Container(
                    height: 56,
                    width: 70,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: kLightGrayColor,
                    ),
                    child: TextField(
                      // maxLength: 1,
                      keyboardType: TextInputType.numberWithOptions(),
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        labelStyle: TextStyle(
                            fontSize: 18,
                            fontFamily: "SF UI Display",
                            fontWeight: FontWeight.w500),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
              ],
            ),
            SizedBox(
              height: 40,
            ),
            RoundedButtonUi14(size: size, text: "Verify"),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Resend code to',
                  style: TextStyle(
                    fontFamily: "SF UI Display",
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    color: kSubTextColorUi14,
                  ),
                ),
                Text(
                  "1:26",
                  style: TextStyle(
                    fontFamily: "SF UI Display",
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    color: kSubTextColorUi14,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
