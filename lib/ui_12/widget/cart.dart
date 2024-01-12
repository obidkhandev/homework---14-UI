import 'package:flutter/material.dart';
import 'package:modul_4_homework_obidxon/ui_12/compatations.dart';
import 'package:modul_4_homework_obidxon/ui_3/constants.dart';

class Cart extends StatelessWidget {
  final String productName;
  final String image;
  final String tag;
  final String productStyle;
  const Cart({
    super.key,
    required this.productName,
    required this.image,
    required this.tag,
    required this.productStyle,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          image,
          width: 81,
          height: 81,
        ),
        SizedBox(
          width: 10,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              productName,
              style: kPlayfairDisplay.copyWith(fontSize: 17),
            ),
            SizedBox(
              height: 5,
            ),
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: '$tag\n',
                    style: kWorkSansBlack.copyWith(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  TextSpan(
                    text: '$productStyle\n',
                    style: kWorkSansBlack.copyWith(
                      color: Color.fromRGBO(132, 132, 132, 1),
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Remove',
              style: kWorkSansBlack.copyWith(
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 5),
              height: 2,
              width: 59,
              color: kBackColor,
            ),
          ],
        ),
      ],
    );
  }
}
