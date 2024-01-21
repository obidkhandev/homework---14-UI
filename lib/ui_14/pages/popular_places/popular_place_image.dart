import 'package:flutter/material.dart';
import 'package:modul_4_homework_obidxon/ui_14/compotations.dart';
import 'package:modul_4_homework_obidxon/ui_14/pages/favorite_places/favorite_places.dart';
import 'package:modul_4_homework_obidxon/ui_14/widget/circle_button.dart';

class PopularPlaceImage extends StatelessWidget {
  final String image;
  final IconData icon;
  final Color iconColor;
  final bool haveIcon;
  const PopularPlaceImage({
    super.key,
    required this.image,
    this.icon = Icons.favorite_border,
    this.iconColor = Colors.white,
    this.haveIcon = true,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 0),
      alignment: Alignment.topRight,
      width: double.infinity,
      height: 124,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(image),
        ),
      ),
      child: haveIcon? CircleSmallButtonUi14(
        press: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return const FavoritePlaces();
              },
            ),
          );
        },
        backgroundColor: kTextColorUi14.withOpacity(.2),
        icon: icon,
        iconColor: iconColor,
      ) : const Text(""),
    );
  }
}
