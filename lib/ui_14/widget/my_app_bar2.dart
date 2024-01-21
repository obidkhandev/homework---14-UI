import 'package:flutter/material.dart';
import 'package:modul_4_homework_obidxon/ui_14/compotations.dart';
import 'package:modul_4_homework_obidxon/ui_14/widget/arrow_icon.dart';

class MyAppBar2 extends StatelessWidget {
  final String title;
  final Widget child;
  const MyAppBar2({
    super.key,
    required this.title,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        arrowIcon(context),
        Text(
          title,
          style: kSfUiSytle.copyWith(
              fontSize: 18, fontWeight: FontWeight.w600, color: kTextColorUi14),
        ),
        child
      ],
    );
  }
}
