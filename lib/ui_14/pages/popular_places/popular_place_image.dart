import 'package:flutter/material.dart';
import 'package:modul_4_homework_obidxon/ui_14/compotations.dart';
import 'package:modul_4_homework_obidxon/ui_14/widget/circle_button.dart';

class PopularPlaceImage extends StatelessWidget {
  final String image;
  const PopularPlaceImage({
    super.key,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 0),
      alignment: Alignment.topRight,
      width: double.infinity,
      height: 124,
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(image),
        ),
      ),
      child: CircleSmallButtonUi14(
        backgroundColor: kTextColorUi14.withOpacity(.2),
        icon: Icons.favorite_border,
        iconColor: Colors.white,
      ),
    );
  }
}
