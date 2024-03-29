import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:modul_4_homework_obidxon/ui_14/compotations.dart';
import 'package:modul_4_homework_obidxon/ui_14/pages/profile/profile_edit_screen.dart';
import 'package:modul_4_homework_obidxon/ui_14/pages/profile/profile_menu.dart';
import 'package:modul_4_homework_obidxon/ui_14/widget/circle_button.dart';
import 'package:modul_4_homework_obidxon/ui_14/widget/line_border.dart';
import 'package:modul_4_homework_obidxon/ui_14/widget/my_app_bar2.dart';
import 'package:modul_4_homework_obidxon/ui_14/widget/rich_text_2.dart';

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
              MyAppBar2(
                title: "Profile",
                child: CircleSmallButtonUi14(
                  press: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return const ProfileEditScreen();
                        },
                      ),
                    );
                  },
                  height: 44,
                  width: 44,
                  backgroundColor: kLightGrayColor,
                  icon: Icons.edit,
                  iconColor: kPrimaryColorUi14,
                ),
              ),
              const SizedBox(height: 30),
              const ProfileCircleImage(),
              const SizedBox(height: 10),
              Text(
                "Leonardo",
                style: kSfUiSytle.copyWith(
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                  color: kTextColorUi14,
                ),
              ),
              const Text(
                "leonardo@gmail.com",
                style: kSfUiSytle,
              ),
              Container(
                height: 80,
                width: double.infinity,
                padding: const EdgeInsets.symmetric(horizontal: 10),
                margin: const EdgeInsets.symmetric(vertical: 20),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16),
                    boxShadow: const [
                      BoxShadow(
                        offset: Offset(0, 6),
                        blurRadius: 16,
                        color: Color.fromRGBO(189, 198, 211, 0.12),
                      )
                    ]),
                child: const Row(
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
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: const [
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
                    const ProfilMenu(
                      icon: CupertinoIcons.person,
                      text: "Profile",
                    ),
                    const LineBorder(
                      height: 0,
                      width: double.infinity,
                    ),
                    const ProfilMenu(
                      icon: Icons.bookmark_outline,
                      text: "Bookmarked",
                    ),
                    const LineBorder(
                      height: 0,
                      width: double.infinity,
                    ),
                    Row(
                      children: [
                        Image.asset("assets/ui_14/images/trip.png"),
                        const SizedBox(width: 10),
                        Text(
                          "Previous Trips",
                          style: kSfUiSytle.copyWith(
                              color: kTextColorUi14, fontSize: 15),
                        ),
                        const Spacer(),
                        const Icon(
                          Icons.arrow_forward_ios_rounded,
                          color: kSubTextColorUi14,
                          size: 18,
                        )
                      ],
                    ),
                    const LineBorder(
                      height: 0,
                      width: double.infinity,
                    ),
                    const ProfilMenu(
                      icon: Icons.settings_outlined,
                      text: "Settings",
                    ),
                    const LineBorder(
                      height: 0,
                      width: double.infinity,
                    ),
                    const ProfilMenu(
                      icon: Icons.screen_search_desktop_outlined,
                      text: "Version",
                    ),
                    const LineBorder(
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

class ProfileCircleImage extends StatelessWidget {
  const ProfileCircleImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}
