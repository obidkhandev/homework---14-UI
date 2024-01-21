import 'package:flutter/material.dart';
import 'package:modul_4_homework_obidxon/ui_14/compotations.dart';
import 'package:modul_4_homework_obidxon/ui_14/widget/circle_button.dart';

class DetailBackgroundUi14 extends StatelessWidget {
  const DetailBackgroundUi14({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 56),
      height: size.height * 0.5,
      width: double.infinity,
      decoration: const BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.fitWidth,
          image: AssetImage('assets/ui_14/images/Rectangle 818.png'),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleSmallButtonUi14(
            press: () {
              Navigator.pop(context);
            },
            width: 44,
            height: 44,
            backgroundColor: kSubTextColorUi14.withOpacity(.2),
            icon: Icons.arrow_back_ios_new,
            iconSize: 18,
            iconColor: Colors.white,
          ),
          CircleSmallButtonUi14(
            width: 44,
            height: 44,
            backgroundColor: kSubTextColorUi14.withOpacity(.2),
            icon: Icons.bookmark_border_outlined,
            iconSize: 20,
            iconColor: Colors.white,
          ),
        ],
      ),
    );
  }
}
