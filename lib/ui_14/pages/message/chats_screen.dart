import 'package:flutter/material.dart';
import 'package:modul_4_homework_obidxon/ui_14/compotations.dart';
import 'package:modul_4_homework_obidxon/ui_14/pages/message/post_text.dart';
import 'package:modul_4_homework_obidxon/ui_14/pages/sing/compotations/email_field_container.dart';
import 'package:modul_4_homework_obidxon/ui_14/widget/arrow_icon.dart';
import 'package:modul_4_homework_obidxon/ui_14/widget/circle_button.dart';
import 'package:modul_4_homework_obidxon/ui_14/widget/line_border.dart';

class ChatsScreen extends StatelessWidget {
  const ChatsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(left: 20,bottom: 20,right: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            EmailFieldContainer(
              sizeWidth: 0.7,
              height: 48,
              child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Type you message",
                  hintStyle: kSfUiSytle.copyWith(fontSize: 16),
                  // suffix: 
                  suffixIcon: Image.asset("assets/ui_14/images/Frame.png",)
                ),
              ),
            ),
            const CircleSmallButtonUi14(
              width: 48,
              height: 48,
              backgroundColor: kPrimaryColorUi14, icon: Icons.mic, iconColor: Colors.white)
          ],
        ),
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 56, bottom: 20),
          child: Column(
            children: [
              buildAppBar(context),
              const SizedBox(height: 20),
              const LineBorder(
                height: 0,
                width: double.infinity,
              ),
              const SizedBox(height: 20),
              Container(
                height: 32,
                width: 60,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: kLightGrayColor,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: const Text(
                  "Today",
                  style: kSfUiSytle,
                ),
              ),
              SizedBox(
                height: size.height * 0.1,
              ),
              const PostText(
                  text: "Hello",
                  rightMarjin: 20,
                  leftMarjin: 248,
                  time: "9:24",
                  bottomRight: 0,
                  backgrounColor: Color.fromRGBO(229, 244, 255, 1)),
              const PostText(
                  rightMarjin: 20,
                  leftMarjin: 70,
                  time: "9:30",
                  bottomRight: 0,
                  iconColor: kSubTextColorUi14,
                  backgrounColor: Color.fromRGBO(229, 244, 255, 1),
                  text:
                      "Thank you very mouch for your \ntraveling, we really like the\napartments. we will stay here for\nanather 5 days..."),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Row(
                  children: [
                    Image.asset("assets/ui_14/images/Ellipse 897.png"),
                    // SizedBox(width: 10),
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        PostText(
                          bottomLeft: 0,
                          text: "Hello!",
                          time: "9:34",
                          iconColor: Colors.green,
                          leftMarjin: 10,
                        ),
                        PostText(
                          topLeft: 0,
                          text: "I’m very glab you like it👍",
                          iconColor: Colors.green,
                          time: "9:35",
                          leftMarjin: 10,
                        )
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Row(
                  children: [
                    Image.asset("assets/ui_14/images/Ellipse 901.png"),
                    const PostText(
                      bottomLeft: 0,
                      text:
                          "We are arriving today at 01:45,\n will someone be at home?",
                      time: "9:34",
                      iconColor: Colors.green,
                      leftMarjin: 10,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              const PostText(
                text: "I will be at home",
                rightMarjin: 20,
                time: "9:39",
                backgrounColor: Color.fromRGBO(229, 244, 255, 1),
                leftMarjin: 160,
              ),
              const SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }

  Row buildAppBar(BuildContext context) {
    return Row(
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
              children: const [
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
        const CircleSmallButtonUi14(
          height: 44,
          width: 44,
          backgroundColor: kLightGrayColor,
          icon: Icons.call,
          iconColor: kTextColorUi14,
        ),
      ],
    );
  }
}

