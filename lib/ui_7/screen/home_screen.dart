import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:modul_4_homework_obidxon/ui_7/constants.dart';
import 'package:modul_4_homework_obidxon/ui_7/widget/info_card.dart';

class HomeScreenUi7 extends StatelessWidget {
  const HomeScreenUi7({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Container(
        padding: EdgeInsets.only(left: 20, top: 20, right: 20, bottom: 40),
        width: double.infinity,
        decoration: BoxDecoration(
          color: kPrimaryColorUi7.withOpacity(.03),
          borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(50),
            bottomRight: Radius.circular(50),
          ),
        ),
        child: const Wrap(
          runSpacing: 20,
          spacing: 20,
          children: [
            LineCardUi7(
              title: 'Confirmed Case',
              effectedNum: 1062,
              iconColor: Color(0xFFFF8C00),
            ),
            LineCardUi7(
              title: 'Total Deaths',
              effectedNum: 75,
              iconColor: Color(0xFFFF2D55),
            ),
            LineCardUi7(
              title: 'Total Recovered',
              effectedNum: 689,
              iconColor: Color(0xFF50E3C2),
            ),
            LineCardUi7(
              title: 'New Cases',
              effectedNum: 95,
              iconColor: Color(0xFF5856D6),
            ),
          ],
        ),
      ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      elevation: 0,
      backgroundColor: kPrimaryColorUi7.withOpacity(.03),
      leading: IconButton(
        onPressed: () {},
        icon: SvgPicture.asset('assets/ui_7/icons/menu.svg'),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: SvgPicture.asset('assets/ui_7/icons/search.svg'),
        ),
      ],
    );
  }
}

