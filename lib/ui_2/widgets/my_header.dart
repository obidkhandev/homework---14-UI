import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:modul_4_homework_obidxon/ui_2/constant.dart';

class MyHeader extends StatelessWidget {
  final String image;
  final String titleTop;
  final String titleBottom;
  final Function()? press;
  const MyHeader({
    super.key,
    required this.image,
    required this.titleTop,
    required this.titleBottom,
    this.press,
  });

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: MyClipper(),
      child: Container(
        padding: const EdgeInsets.only(top: 40, left: 30, right: 15),
        height: 300,
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [Color(0xFF3383CD), Color(0xff11249F)]),
          image: DecorationImage(
              image: AssetImage('assets/ui_2/images/virus.png')),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
                alignment: Alignment.topRight,
                child: GestureDetector(
                  onTap: press,
                  child: SvgPicture.asset('assets/ui_2/icons/menu.svg'))),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: Stack(
                children: [
                  SvgPicture.asset(
                    image,
                    width: 200,
                    fit: BoxFit.fitWidth,
                    alignment: Alignment.topCenter,
                  ),
                  Positioned(
                    left: 150,
                    // right: 20,
                    child: Text(
                      '$titleTop\n$titleBottom',
                      style: kHeadingTextStyle.copyWith(color: Colors.white),
                    ),
                  ),
                  Container()
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height - 70);
    path.quadraticBezierTo(
        size.width / 2, size.height, size.width, size.height - 70);
    path.lineTo(size.width, 0);
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
