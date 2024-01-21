import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:modul_4_homework_obidxon/ui_6/lib/constants.dart';

class CategoryCardUi6 extends StatelessWidget {
  final String image;
  final String text;
  final Function()? press;
  const CategoryCardUi6({
    super.key,
    this.press,
    required this.image,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(13),
      child: Container(
        // padding: EdgeInsets.all(15),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(13),
            boxShadow: const [
              BoxShadow(
                offset: Offset(0, 15),
                blurRadius: 15,
                spreadRadius: -25,
                color: kShadowColorUi6,
              )
            ]),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: press,
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: Column(
                children: [
                  Spacer(),
                  SvgPicture.asset(image),
                  Spacer(),
                  Text(
                    textAlign: TextAlign.center,
                    text,
                    style: Theme.of(context)
                        .textTheme
                        .titleSmall!
                        .copyWith(fontSize: 16),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
