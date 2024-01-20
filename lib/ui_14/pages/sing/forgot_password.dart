import 'package:flutter/material.dart';
import 'package:modul_4_homework_obidxon/ui_14/compotations.dart';
import 'package:modul_4_homework_obidxon/ui_14/pages/sing/compotations/email_field_container.dart';
import 'package:modul_4_homework_obidxon/ui_14/pages/sing/verification.dart';
import 'package:modul_4_homework_obidxon/ui_14/widget/arrow_icon.dart';
import 'package:modul_4_homework_obidxon/ui_14/widget/rounded_button.dart';

class ForgotPasswordUi14 extends StatefulWidget {
  const ForgotPasswordUi14({super.key});

  @override
  State<ForgotPasswordUi14> createState() => _ForgotPasswordUi14State();
}

class _ForgotPasswordUi14State extends State<ForgotPasswordUi14> {
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
              "Forgot password",
              style: TextStyle(
                fontFamily: 'SF UI Display',
                fontSize: 26,
                fontWeight: FontWeight.w400,
              ),
            ),
            const SizedBox(height: 5),
            const Text(
              'Enter your email account to reset  your password',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'SF UI Display',
                fontSize: 16,
                color: kSubTextColorUi14,
                fontWeight: FontWeight.w400,
              ),
            ),
            const SizedBox(height: 20),
            EmailFieldContainer(
              child: TextField(
                onSubmitted: (value) {},
                decoration: InputDecoration(border: InputBorder.none),
              ),
            ),
            const SizedBox(height: 20),
            RoundedButtonUi14(
              size: size,
              text: "Reset Password",
              vertical: 30,
              press: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return VerificationScreen();
                },),);
              },
            )
          ],
        ),
      ),
    );
  }
}
