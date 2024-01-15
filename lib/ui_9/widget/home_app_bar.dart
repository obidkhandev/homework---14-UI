 import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:modul_4_homework_obidxon/ui_9/constants.dart';

AppBar homeAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      leading: IconButton(
        icon: SvgPicture.asset('assets/ui_9/icons/menu.svg'),
        onPressed: () {},
      ),
      centerTitle: true,
      title: RichText(
        text: TextSpan(
          style: Theme.of(context)
              .textTheme
              .titleLarge!
              .copyWith(fontWeight: FontWeight.bold),
          children: [
            TextSpan(
                text: 'Punk', style: TextStyle(color: kSecondaryColorUi9)),
            TextSpan(
              text: 'Food',
              style: TextStyle(color: kPrimaryColorUi9),
            ),
          ],
        ),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: SvgPicture.asset('assets/ui_9/icons/notification.svg'),
        ),
      ],
    );
  }