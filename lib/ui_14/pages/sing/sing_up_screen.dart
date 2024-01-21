import 'package:flutter/material.dart';
import 'package:modul_4_homework_obidxon/ui_14/compotations.dart';
import 'package:modul_4_homework_obidxon/ui_14/pages/sing/compotations/email_field_container.dart';
import 'package:modul_4_homework_obidxon/ui_14/pages/sing/compotations/rich_text_sing.dart';
import 'package:modul_4_homework_obidxon/ui_14/pages/sing/compotations/social_media.dart';
import 'package:modul_4_homework_obidxon/ui_14/pages/sing/forgot_password.dart';
import 'package:modul_4_homework_obidxon/ui_14/widget/arrow_icon.dart';
import 'package:modul_4_homework_obidxon/ui_14/widget/rounded_button.dart';

class SingUpScreenUi14 extends StatefulWidget {
  const SingUpScreenUi14({super.key});

  @override
  State<SingUpScreenUi14> createState() => _SingUpScreenUi14State();
}

bool _eyes = true;

class _SingUpScreenUi14State extends State<SingUpScreenUi14> {
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
              padding: const EdgeInsets.only(
                left: 20,
                right: 20,
                top: 50,
                bottom: 60,
              ),
              child: Column(
                children: [
                  arrowIcon(context),
                  const SizedBox(height: 20,),
                  const Text(
                    "Sign up now",
                    style: TextStyle(
                      fontFamily: 'SF UI Display',
                      fontSize: 26,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const SizedBox(height: 5),
                  const Text(
                    'Please fill the details and create account',
                    style: TextStyle(
                      fontFamily: 'SF UI Display',
                      fontSize: 16,
                      color: kSubTextColorUi14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const EmailFieldContainer(
                    child: TextField(
                      decoration: InputDecoration(border: InputBorder.none),
                    ),
                  ),
                  const EmailFieldContainer(
                    child:  TextField(
                      decoration: InputDecoration(border: InputBorder.none),
                    ),
                  ),
                  EmailFieldContainer(
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
                            Icons.visibility_off_outlined,
                            color: kSubTextColorUi14,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Password must be 8 character',
                      style: TextStyle(
                        fontFamily: "SF UI Display",
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: kSubTextColorUi14,
                      ),
                    ),
                  ),
                  RoundedButtonUi14(
                    size: size,
                    text: "Sing Up",
                    vertical: 30,
                    press: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return const ForgotPasswordUi14();
                          },
                        ),
                      );
                    },
                  ),
                  // SizedBox(height: 30),
                  const MyRichTextSingPage(),
                  const Text(
                    'Or Connect',
                    style: TextStyle(
                      fontFamily: "SF UI Display",
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: kSubTextColorUi14,
                    ),
                  ),
                  const Spacer(),
                  const SocialMedia()
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
