import 'package:flutter/material.dart';
import 'package:modul_4_homework_obidxon/ui_14/compotations.dart';

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

