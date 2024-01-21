import 'package:flutter/material.dart';
import 'package:modul_4_homework_obidxon/ui_14/compotations.dart';
import 'package:modul_4_homework_obidxon/ui_14/pages/sing/compotations/email_field_container.dart';

class ProfileSettingsInput extends StatelessWidget {
  const ProfileSettingsInput({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return EmailFieldContainer(
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
    );
  }
}
