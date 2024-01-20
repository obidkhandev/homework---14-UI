import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:modul_4_homework_obidxon/ui_12/widget/person_circle.dart';
import 'package:modul_4_homework_obidxon/ui_12/widget/simple_line.dart';
import 'package:modul_4_homework_obidxon/ui_14/compotations.dart';
import 'package:modul_4_homework_obidxon/ui_14/widget/arrow_icon.dart';
import 'package:modul_4_homework_obidxon/ui_14/widget/circle_button.dart';

class ProfileScreenUi14 extends StatelessWidget {
  const ProfileScreenUi14({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding:
              const EdgeInsets.only(left: 20, right: 20, top: 56, bottom: 20),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  arrowIcon(context),
                  Text(
                    "Profile",
                    style: kSfUiSytle.copyWith(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: kTextColorUi14),
                  ),
                  CircleSmallButtonUi14(
                    height: 44,
                    width: 44,
                    backgroundColor: kLightGrayColor,
                    icon: Icons.edit,
                    iconColor: kPrimaryColorUi14,
                  ),
                ],
              ),
              SizedBox(height: 30),
              Container(
                height: 96,
                width: 96,
                // alignment: ,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color.fromRGBO(255, 234, 223, 1),
                  image: DecorationImage(
                    fit: BoxFit.fitWidth,
                    alignment: Alignment.bottomCenter,
                    image: AssetImage("assets/ui_14/images/Group.png"),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Text(
                "Leonardo",
                style: kSfUiSytle.copyWith(
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                  color: kTextColorUi14,
                ),
              ),
              Text(
                "leonardo@gmail.com",
                style: kSfUiSytle,
              ),
              Container(
                height: 80,
                width: double.infinity,
                padding: EdgeInsets.symmetric(horizontal: 10),
                margin: EdgeInsets.symmetric(vertical: 20),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16),
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(0, 6),
                        blurRadius: 16,
                        color: Color.fromRGBO(189, 198, 211, 0.12),
                      )
                    ]),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    RichText2(
                      textOne: "Reward Points",
                      textTwo: '360',
                    ),
                    LineBorder(),
                    RichText2(
                      textOne: "Travel Trips",
                      textTwo: '238',
                    ),
                    LineBorder(),
                    RichText2(
                      textOne: "Bucket List",
                      textTwo: '473',
                    ),
                  ],
                ),
              ),
              Container(
                height: 344,
                width: double.infinity,
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0, 6),
                      blurRadius: 16,
                      color: Color.fromRGBO(189, 198, 211, 0.12),
                    ),
                  ],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ProfilMenu(
                      icon: CupertinoIcons.person,
                      text: "Profile",
                    ),
                    LineBorder(
                      height: 0,
                      width: double.infinity,
                    ),
                    ProfilMenu(
                      icon: Icons.bookmark_outline,
                      text: "Bookmarked",
                    ),
                    LineBorder(
                      height: 0,
                      width: double.infinity,
                    ),
                    Row(
                      children: [
                        Image.asset("assets/ui_14/images/trip.png"),
                        SizedBox(width: 10),
                        Text(
                          "Previous Trips",
                          style: kSfUiSytle.copyWith(
                              color: kTextColorUi14, fontSize: 15),
                        ),
                        Spacer(),
                        Icon(
                          Icons.arrow_forward_ios_rounded,
                          color: kSubTextColorUi14,
                          size: 18,
                        )
                      ],
                    ),
                    LineBorder(
                      height: 0,
                      width: double.infinity,
                    ),
                    ProfilMenu(
                      icon: Icons.settings_outlined,
                      text: "Settings",
                    ),
                    LineBorder(
                      height: 0,
                      width: double.infinity,
                    ),
                    ProfilMenu(
                      icon: Icons.screen_search_desktop_outlined,
                      text: "Version",
                    ),
                    LineBorder(
                      height: 0,
                      width: double.infinity,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class ProfilMenu extends StatelessWidget {
  final IconData icon;
  final String text;
  const ProfilMenu({
    super.key,
    required this.icon,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          color: kSubTextColorUi14,
        ),
        SizedBox(width: 10),
        Text(
          text,
          style: kSfUiSytle.copyWith(color: kTextColorUi14, fontSize: 15),
        ),
        Spacer(),
        Icon(
          Icons.arrow_forward_ios_rounded,
          color: kSubTextColorUi14,
          size: 18,
        )
      ],
    );
  }
}

class RichText2 extends StatelessWidget {
  final String textOne;
  final String textTwo;
  const RichText2({
    super.key,
    required this.textOne,
    required this.textTwo,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        style: kSfUiSytle.copyWith(
          color: kTextColorUi14,
          fontSize: 16,
        ),
        children: [
          TextSpan(
            text: "$textOne\n\n",
          ),
          TextSpan(
            text: textTwo,
            style: TextStyle(
              color: kPrimaryColorUi14,
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}

class LineBorder extends StatelessWidget {
  final double height;
  final double width;
  const LineBorder({
    super.key,
    this.height = 80,
    this.width = 0,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        border: Border.all(
          color: kLightGrayColor,
          width: 1.5,
        ),
      ),
    );
  }
}
