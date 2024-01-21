import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SerachBar extends StatelessWidget {
  const SerachBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20),
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
      ),
      child: TextField(
        decoration: InputDecoration(
            hintText: 'Search',
            icon: SvgPicture.asset('assets/ui_6/icons/search.svg'),
            border: InputBorder.none),
      ),
    );
  }
}
