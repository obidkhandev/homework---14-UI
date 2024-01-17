import 'package:flutter/material.dart';
import 'package:modul_4_homework_obidxon/ui_13/constants.dart';

class EmailFieldButton extends StatefulWidget {
  const EmailFieldButton({
    super.key,
  });

  @override
  State<EmailFieldButton> createState() => _EmailFieldButtonState();
}

bool checkEmail = false;

class _EmailFieldButtonState extends State<EmailFieldButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 12),
      margin: EdgeInsets.only(bottom: 30),
      width: double.infinity,
      height: 48,
      decoration: BoxDecoration(
          color: kTextGreyColorUi13.withOpacity(.4),
          borderRadius: BorderRadius.circular(10)),
      child: TextField(
        style: TextStyle(
            color: Color.fromRGBO(3, 3, 25, 1),
            fontSize: 16,
            fontWeight: FontWeight.w500),
        onChanged: ((value) {
          setState(() {
            if (value == 'hello.world@gmail.com') {
              checkEmail = true;
            } else {
              checkEmail = false;
            }
          });
        }),
        decoration: InputDecoration(
          suffixIconColor: Colors.green,
            suffixIcon:
                checkEmail ? Icon(Icons.check) : Icon(Icons.cancel_outlined),
            border: InputBorder.none),
      ),
    );
  }
}
