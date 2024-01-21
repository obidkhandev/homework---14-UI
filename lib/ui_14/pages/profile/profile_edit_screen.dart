import 'package:flutter/material.dart';
import 'package:modul_4_homework_obidxon/ui_14/compotations.dart';
import 'package:modul_4_homework_obidxon/ui_14/pages/profile/profile_screen.dart';
import 'package:modul_4_homework_obidxon/ui_14/pages/profile/profile_settings_input.dart';
import 'package:modul_4_homework_obidxon/ui_14/pages/sing/compotations/email_field_container.dart';
import 'package:modul_4_homework_obidxon/ui_14/widget/my_app_bar2.dart';

class ProfileEditScreen extends StatelessWidget {
  const ProfileEditScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(
            left: 20,
            right: 20,
            top: 56,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              MyAppBar2(
                child: Text(
                  "Done",
                  style: kSfUiSytle.copyWith(
                    color: kPrimaryColorUi14,
                  ),
                ),
                title: "Edit Profile",
              ),
              SizedBox(height: 20),
              Align(
                alignment: Alignment.center,
                child: ProfileCircleImage(),
              ),
              Align(
                alignment: Alignment.center,
                child: Text(
                  "Leonardo",
                  style: kSfUiSytle.copyWith(
                    fontSize: 24,
                    color: kTextColorUi14,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Text(
                  "Change Profile Picture",
                  style: kSfUiSytle.copyWith(
                      color: kPrimaryColorUi14, fontWeight: FontWeight.w600),
                ),
              ),
              SizedBox(height: 20),
              Text(
                "First Name",
                style: kSfUiSytle.copyWith(color: kTextColorUi14, fontSize: 18),
              ),
              ProfileSettingsInput(),
              Text(
                "Last Name",
                style: kSfUiSytle.copyWith(color: kTextColorUi14, fontSize: 18),
              ),
              ProfileSettingsInput(),
              Text(
                "Location",
                style: kSfUiSytle.copyWith(color: kTextColorUi14, fontSize: 18),
              ),
              EmailFieldContainer(
                topSize: 10,
                bottom: 10,
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    suffixIcon: Icon(
                      Icons.check,
                      color: kPrimaryColorUi14,
                    ),
                  ),
                ),
              ),
              Text(
                "Mobile Number",
                style: kSfUiSytle.copyWith(color: kTextColorUi14, fontSize: 18),
              ),
              EmailFieldContainer(
                topSize: 10,
                bottom: 10,
                child: Row(
                  children: [
                    Text("+88",style: kSfUiSytle,),
                    SizedBox(width: 5),
                    Image.asset("assets/ui_14/images/^.png"),
                    SizedBox(width: 10),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          suffixIcon: Icon(
                            Icons.check,
                            color: kPrimaryColorUi14,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
