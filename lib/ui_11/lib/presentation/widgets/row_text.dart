import 'package:flutter/material.dart';
import 'package:modul_4_homework_obidxon/ui_11/lib/components.dart';

class RowText extends StatelessWidget {
  final String title;
  final Function()? press;
  const RowText({
    super.key,
    required this.title,
    this.press,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: sfProBold.copyWith(
            fontSize: 22,
            fontWeight: FontWeight.w700,
          ),
        ),
        TextButton(
          onPressed: press,
          child: const Text(
            'CHANGE',
            style: TextStyle(
              color: Color.fromRGBO(114, 3, 255, 1),
              fontSize: 15,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      ],
    );
  }
}
