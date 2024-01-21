import 'package:flutter/material.dart';
import 'package:modul_4_homework_obidxon/ui_11/lib/components.dart';

class MyTextField extends StatelessWidget {
  final String hintText;
  final String text;
  final double width;
  final IconData? icon;
  final bool iconHave;
  final Color iconColor;
  const MyTextField(
      {super.key,
      required this.hintText,
      required this.text,
      this.width = 374,
      this.icon,
      this.iconHave = false,
      this.iconColor = const Color.fromRGBO(217, 208, 227, 1)
      });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Text(
            hintText,
            style: const TextStyle(
              color: textScondaryColor,
              fontSize: 14,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.all(10),
          height: 48,
          width: width,
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: borderColor, width: 1),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Row(
            children: [
              Text(
                text,
                style: const TextStyle(
                  color: textPrimaryColor,
                  fontWeight: FontWeight.w400,
                  fontSize: 17,
                ),
              ),
              const Spacer(),
              iconHave ? Icon(icon,color: iconColor,) : const Text(''),
            ],
          ),
        ),
      ],
    );
  }
}
