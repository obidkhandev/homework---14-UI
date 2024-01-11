import 'package:flutter/material.dart';
import 'package:modul_4_homework_obidxon/ui_3/constants.dart';

class CategoryTitle extends StatelessWidget {
  final String title;
  final bool activate;
  const CategoryTitle({
    super.key,
    required this.title,
    this.activate = false,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15, right: 20),
      child: Text(
        title,
        style: Theme.of(context).textTheme.labelLarge!.copyWith(
            color: activate ? kPirimaryColor : kTextColor.withOpacity(.5)),
      ),
    );
  }
}