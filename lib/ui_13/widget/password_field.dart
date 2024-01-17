import 'package:flutter/material.dart';
import 'package:modul_4_homework_obidxon/ui_13/constants.dart';

class PasswordField extends StatefulWidget {
  const PasswordField({
    super.key,
  });

  @override
  State<PasswordField> createState() => _PasswordFieldState();
}

bool eyes = true;

class _PasswordFieldState extends State<PasswordField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 7, horizontal: 12),
      margin: EdgeInsets.only(bottom: 30),
      width: double.infinity,
      height: 48,
      decoration: BoxDecoration(
          color: kTextGreyColorUi13.withOpacity(.4),
          borderRadius: BorderRadius.circular(10)),
      child: TextField(
        obscureText: eyes,
        style: const TextStyle(
            color: Color.fromRGBO(3, 3, 25, 1),
            fontSize: 16,
            fontWeight: FontWeight.w500),
        decoration: InputDecoration(
            suffixIcon: IconButton(
              onPressed: () {
                setState(() {
                  eyes == true ? eyes = false : eyes = true;
                });
              },
              icon: Icon(Icons.remove_red_eye),
            ),
            border: InputBorder.none),
      ),
    );
  }
}
