import 'package:flutter/material.dart';
import 'package:modul_4_homework_obidxon/ui_11/lib/components.dart';

class RowIconAndText extends StatelessWidget {
  final IconData? icon;
  final Color iconColor;
  final Color textColor;
  final String text;
  final bool isActivate;
  const RowIconAndText({
    super.key,
    this.icon,
    this.iconColor = const Color.fromRGBO(45, 12, 87, 1),
    this.textColor = textScondaryColor,
    required this.text,
    this.isActivate = false,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          color: isActivate ? const Color.fromRGBO(114, 3, 255, 1) : iconColor,
        ),
        const SizedBox(width: 30),
        Text(
          text,
          style: TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.w400,
            color: isActivate ? const Color.fromRGBO(114, 3, 255, 1) : textColor,
          ),
        ),
        const Spacer(),
        if (isActivate)
          const Icon(
            Icons.check,
            color: Color.fromRGBO(114, 3, 255, 1),
          ),
      ],
    );
  }
}
