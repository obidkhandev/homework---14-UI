import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 35),
      height: 75,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, -7),
            blurRadius: 33,
            color: const Color(0xFF6DAED9).withOpacity(.11),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset('assets/ui_9/icons/home.svg'),
          ),
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset('assets/ui_9/icons/Following.svg'),
          ),
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset('assets/ui_9/icons/Glyph.svg'),
          ),
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset('assets/ui_9/icons/person.svg'),
          ),
        ],
      ),
    );
  }
}
