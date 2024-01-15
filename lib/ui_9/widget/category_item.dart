import 'package:flutter/material.dart';
import 'package:modul_4_homework_obidxon/ui_9/constants.dart';

class CategoryItemUi9 extends StatelessWidget {
  final String title;
  final bool isActivate;
  final Function()? press;
  const CategoryItemUi9({
    super.key,
    required this.title,
    this.isActivate = false,
    this.press,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        child: Column(
          children: [
            Text(
              title,
              style: isActivate? TextStyle(
                color: kTextColorUi9,
                fontWeight: FontWeight.bold,
              ): TextStyle(fontSize: 12),
            ),
            if (isActivate)
              Container(
                margin: EdgeInsets.symmetric(vertical: 5),
                height: 3,
                width: 22,
                decoration: BoxDecoration(
                  color: kPrimaryColorUi9,
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
