import 'package:flutter/material.dart';
import 'package:modul_4_homework_obidxon/ui_6/lib/widgets/bottom_nav_item.dart';

class BottomNavBarUi6 extends StatelessWidget {
  const BottomNavBarUi6({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
      height: 70,
      color: Colors.white,
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          BottomNavItemUi6(
            title: 'Today',
            svgImg: 'assets/ui_6/icons/calendar.svg',
          ),
          BottomNavItemUi6(
            title: 'All exercises',
            svgImg: 'assets/ui_6/icons/gym.svg',
            isActivate: true,
          ),
          BottomNavItemUi6(
            title: 'Settings',
            svgImg: 'assets/ui_6/icons/Settings.svg',
          ),
        ],
      ),
    );
  }
}
