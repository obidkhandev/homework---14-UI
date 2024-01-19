import 'package:flutter/material.dart';
import 'package:modul_4_homework_obidxon/ui_14/compotations.dart';
import 'package:modul_4_homework_obidxon/ui_14/pages/singIn/compotations/email_field_container.dart';
import 'package:modul_4_homework_obidxon/ui_14/pages/singIn/compotations/rich_text_sing.dart';
import 'package:modul_4_homework_obidxon/ui_14/pages/singIn/compotations/social_media.dart';
import 'package:modul_4_homework_obidxon/ui_14/widget/arrow_icon.dart';
import 'package:modul_4_homework_obidxon/ui_14/widget/rounded_button.dart';

class SingInScreenUi14 extends StatefulWidget {
  const SingInScreenUi14({super.key});

  @override
  State<SingInScreenUi14> createState() => _SingInScreenUi14State();
}

bool _eyes = true;

class _SingInScreenUi14State extends State<SingInScreenUi14> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: ListView(
        children: [
          SizedBox(
            height: size.height,
            width: double.infinity,
            child: Padding(
              padding:
                  EdgeInsets.only(left: 20, right: 20, bottom: 50, top: 50),
              child: Column(
                // crossAxisAlignment: CrossAxisAlignment.center,
                // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  arrowIcon(context),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Sign in now',
                    style: TextStyle(
                      fontFamily: 'SF UI Display',
                      fontSize: 26,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    'Please sign in to continue our app',
                    style: TextStyle(
                      fontFamily: 'SF UI Display',
                      fontSize: 16,
                      color: kSubTextColorUi14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  // SizedBox(height: 20),
                  EmailFieldContainer(
                    size: size,
                    child: const TextField(
                      decoration: InputDecoration(border: InputBorder.none),
                    ),
                  ),
                  EmailFieldContainer(
                    size: size,
                    child: TextField(
                      obscureText: _eyes,
                      obscuringCharacter: '*',
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              _eyes == true ? _eyes = false : _eyes = true;
                            });
                          },
                          icon: const Icon(
                            Icons.remove_red_eye,
                            color: kSubTextColorUi14,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  const Align(
                    alignment: Alignment.topRight,
                    child: Text(
                      'Forget Password?',
                      style: TextStyle(
                          fontFamily: "SF UI Display",
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: kPrimaryColorUi14),
                    ),
                  ),
                  const SizedBox(
                    height: 20
                  ),
                  RoundedButtonUi14(
                    size: size,
                    text: 'Sing In',
                    press: () {},
                  ),
                  const SizedBox(
                    height: 30
                  ),
                  MyRichTextSingPage(
                    fristText: "Don’t have an account?",
                    secondText: "Sing Up",
                    press: () {},
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Or Connect',
                    style: TextStyle(
                      fontFamily: "SF UI Display",
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: kSubTextColorUi14,
                    ),
                  ),
                  const Spacer(),
                  const SocialMedia(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

