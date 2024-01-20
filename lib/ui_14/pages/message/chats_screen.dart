import 'package:flutter/material.dart';
import 'package:modul_4_homework_obidxon/ui_14/compotations.dart';
import 'package:modul_4_homework_obidxon/ui_14/widget/arrow_icon.dart';
import 'package:modul_4_homework_obidxon/ui_14/widget/circle_button.dart';
import 'package:modul_4_homework_obidxon/ui_14/widget/line_border.dart';

class ChatsScreen extends StatelessWidget {
  const ChatsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(top: 56, bottom: 20),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  arrowIcon(context),
                  RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                        style: kSfUiSytle.copyWith(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: kTextColorUi14),
                        children: [
                          TextSpan(
                            text: "Sajib Rahman\n",
                          ),
                          TextSpan(
                            text: "Active Now",
                            style: TextStyle(
                              color: Color.fromRGBO(
                                25,
                                176,
                                0,
                                1,
                              ),
                            ),
                          ),
                        ]),
                  ),
                  CircleSmallButtonUi14(
                    height: 44,
                    width: 44,
                    backgroundColor: kLightGrayColor,
                    icon: Icons.call,
                    iconColor: kTextColorUi14,
                  ),
                ],
              ),
              SizedBox(height: 20),
              LineBorder(
                height: 0,
                width: double.infinity,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
