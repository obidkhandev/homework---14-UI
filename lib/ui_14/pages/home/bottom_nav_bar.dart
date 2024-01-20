import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:modul_4_homework_obidxon/ui_14/pages/home/home_screen.dart';
import 'package:modul_4_homework_obidxon/ui_14/pages/profile/profile_screen.dart';
import 'package:modul_4_homework_obidxon/ui_14/pages/schedule/schedule_screen.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

class BottomNavBarUi14 extends StatefulWidget {
  const BottomNavBarUi14({super.key});

  @override
  State<BottomNavBarUi14> createState() => _BottomNavBarUi14State();
}

class _BottomNavBarUi14State extends State<BottomNavBarUi14> {
  late PersistentTabController _controller;

  void onTapNav(int index) {
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    _controller = PersistentTabController(initialIndex: 0);
  }

  List<Widget> _buildScreens() {
    return [
      HomeScreenUi14(),
      ScheduleScreenUi14(),
      Container(
        child: Center(child: Text('Next page')),
      ),
      Container(
        child: Center(child: Text('Next page')),
      ),
      ProfileScreenUi14()
    ];
  }

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        icon: Icon(CupertinoIcons.home),
        title: ("Home"),
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(Icons.calendar_month_outlined),
        title: ("Calendar"),
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(CupertinoIcons.search, color: Colors.white),
        // title: ("Search"),
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(Icons.message_rounded),
        title: ("Message"),
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(CupertinoIcons.person),
        title: ("Profile"),
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      context,
      controller: _controller,
      screens: _buildScreens(),
      items: _navBarsItems(),
      confineInSafeArea: true,
      backgroundColor: Colors.white, // Default is Colors.white.
      handleAndroidBackButtonPress: true, // Default is true.
      resizeToAvoidBottomInset:
          true, // This needs to be true if you want to move up the screen when keyboard appears. Default is true.
      stateManagement: true, // Default is true.
      hideNavigationBarWhenKeyboardShows:
          true, // Recommended to set 'resizeToAvoidBottomInset' as true while using this argument. Default is true.
      decoration: NavBarDecoration(
        borderRadius: BorderRadius.circular(10.0),
        colorBehindNavBar: Colors.white,
      ),
      popAllScreensOnTapOfSelectedTab: true,
      popActionScreens: PopActionScreensType.all,
      itemAnimationProperties: ItemAnimationProperties(
        // Navigation Bar's items animation properties.
        duration: Duration(milliseconds: 200),
        curve: Curves.ease,
      ),
      screenTransitionAnimation: ScreenTransitionAnimation(
        // Screen transition animation on change of selected tab.
        animateTabTransition: true,
        curve: Curves.ease,
        duration: Duration(milliseconds: 200),
      ),
      navBarStyle:
          NavBarStyle.style15, // Choose the nav bar style with this property.
    );
  }
}
