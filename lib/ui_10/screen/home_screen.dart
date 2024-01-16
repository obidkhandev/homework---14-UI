import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:modul_4_homework_obidxon/ui_10/componants/body.dart';
import 'package:modul_4_homework_obidxon/ui_10/constants.dart';

class HomeScreenUi10 extends StatelessWidget {
  const HomeScreenUi10({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Movie',
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
        scaffoldBackgroundColor: Colors.white,
      ),
      home: Scaffold(
        appBar: buildAppBar(),
        body: BodyUi10(),
      ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          padding: const EdgeInsets.only(left: kDefaultPaddingUi10),
          onPressed: () {},
          icon: SvgPicture.asset('assets/ui_10/icons/menu.svg'),
        ),
        actions: [
          IconButton(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddingUi10),
            onPressed: () {},
            icon: SvgPicture.asset('assets/ui_10/icons/search.svg'),
          ),
        ],
      );
  }
}
