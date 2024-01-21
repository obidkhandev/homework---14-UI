import 'package:flutter/material.dart';
import 'package:modul_4_homework_obidxon/ui_8/constants.dart';

import 'text_field_container.dart';

class RoundedPasswordField extends StatelessWidget {
  final ValueChanged<String> onChanged;
  const RoundedPasswordField({
    super.key,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        obscureText: true,
        onChanged: onChanged,
        decoration: const InputDecoration(
            hintText: 'Password',
            icon: Icon(
              Icons.lock,
              color: kPrimaryColorUi8,
            ),
            suffixIcon: Icon(
              Icons.visibility,
              color: kPrimaryColorUi8,
            ),
            border: InputBorder.none),
      ),
    );
  }
}
