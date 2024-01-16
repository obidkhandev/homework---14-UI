import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

AppBar detailsAppBar() {
    return AppBar(
      elevation: 0,
      leading: IconButton(
        onPressed: () {},
        icon: Icon(
          Icons.arrow_back_ios,
          color: Colors.white,
        ),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: SvgPicture.asset('assets/ui_9/icons/share.svg'),
        ),
        IconButton(
          onPressed: () {},
          icon: SvgPicture.asset('assets/ui_9/icons/more.svg'),
        ),
      ],
    );
  }