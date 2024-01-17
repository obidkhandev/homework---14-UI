import 'package:flutter/material.dart';
import 'package:modul_4_homework_obidxon/ui_13/constants.dart';
import 'package:modul_4_homework_obidxon/ui_13/screens/recommended_screen.dart';
import 'package:modul_4_homework_obidxon/ui_13/widget/email_field.dart';
import 'package:modul_4_homework_obidxon/ui_13/widget/password_field.dart';
import 'package:modul_4_homework_obidxon/ui_13/widget/rounded_button.dart';

class SingUpScreenUi13 extends StatelessWidget {
  const SingUpScreenUi13({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding:
              const EdgeInsets.only(left: 20, right: 20, bottom: 50, top: 50),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                'assets/ui_13/images/chat.png',
                height: 40,
                width: 42,
              ),
              Text(
                'Create a \nnew account',
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 30),
              ),
              Container(
                height: 3,
                width: 26,
                decoration: BoxDecoration(
                  color: kPrimaryLightColorUi13,
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              SizedBox(
                height: size.height * 0.04,
              ),
              const Text(
                'Email or Phone number',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                  color: kTextGreyColorUi13,
                ),
              ),
              const EmailFieldButton(),
              const Text(
                'Password',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                  color: kTextGreyColorUi13,
                ),
              ),
              const PasswordField(),
              const Text(
                'Confirm password',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                  color: kTextGreyColorUi13,
                ),
              ),
              const PasswordField(),
              Row(
                children: [
                  Icon(
                    Icons.check_box,
                    color: kPrimaryColorUi13,
                    size: 20,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  RichText(
                    text: const TextSpan(
                      children: [
                        TextSpan(
                          text: 'By creating an account, you aggree to our\n',
                          style: TextStyle(
                            color: kTextGreyColorUi13,
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        TextSpan(
                          text: 'Term and Conditions',
                          style: TextStyle(
                            color: kPrimaryColorUi13,
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: size.height * 0.08,
              ),
              Center(
                child: RoundedButtonUi13(
                  text: 'Create Account',
                  press: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return RecommendedScreenUi13();
                        },
                      ),
                    );
                  },
                ),
              ),
              const Spacer(),
              Center(
                child: RichText(
                  text: const TextSpan(
                    children: [
                      TextSpan(
                        text: 'Already have an account?',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      TextSpan(
                        text: 'Log in',
                        style: TextStyle(
                          color: kPrimaryColorUi13,
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
