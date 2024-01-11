import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:modul_4_homework_obidxon/ui_2/constant.dart';

class PreventCart extends StatelessWidget {
  final String image;
  final String text;
  final String title;
  const PreventCart({
    super.key,
    required this.image,
    required this.text,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 156,
      child: Stack(
        alignment: Alignment.centerLeft,
        children: [
          Container(
            height: 130,
            width: double.infinity,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    offset: const Offset(0, 10),
                    blurRadius: 24,
                    color: kShadowColor,
                  )
                ]),
          ),
          Image.asset(image),
          Positioned(
            left: 130,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              height: 130,
              width: MediaQuery.of(context).size.width - 180,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    title,
                    style: kTitleTextstyle.copyWith(fontSize: 16),
                  ),
                  Text(
                    text,
                    style: const TextStyle(
                      fontSize: 12,
                    ),
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: SvgPicture.asset('assets/ui_2/icons/forward.svg'),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
