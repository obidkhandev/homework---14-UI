import 'package:flutter/material.dart';
import 'package:modul_4_homework_obidxon/ui_11/lib/components.dart';

class ItemView extends StatelessWidget {
  final IconData icon;
  final bool isBorder;
  final Color colorIcon;
  final Color backroundColor;
  final double horizontalButton;
  final String text;
  final Color textColor;
  final double verticalButton;
  final Function()? pressButton;
  const ItemView({
    super.key,
    required this.icon,
    this.isBorder = false,
    required this.colorIcon,
    this.backroundColor = Colors.white,
    this.pressButton,
    this.horizontalButton = 10,
    this.verticalButton = 0,
    this.text = '',
    this.textColor = Colors.white,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: horizontalButton,
        vertical: verticalButton
      ),
      decoration: BoxDecoration(
        border: isBorder
            ? Border.all(color: borderColor, width: 2)
            : Border.all(color: backroundColor, width: 0),
        borderRadius: BorderRadius.circular(8),
        color: backroundColor,
      ),
      child: Row(
        children: [
          IconButton(
            onPressed: pressButton,
            icon: Icon(
              icon,
              color: colorIcon,
              // size: 20,
            ),
          ),
          Text(
            text,
            style: TextStyle(color: textColor, fontWeight: FontWeight.w600),
          )
        ],
      ),
    );
  }
}
