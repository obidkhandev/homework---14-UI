import 'package:flutter/material.dart';
import 'package:modul_4_homework_obidxon/ui_14/compotations.dart';

class NotificationCard extends StatelessWidget {
  final String image;
  final String text;
  final String time;
  final bool isRead;
  final Color textColor;
  final double topSize;
  final double rigth;
  final double left;
  final Function()? press;
  const NotificationCard({
    super.key,
    required this.image,
    required this.text,
    required this.time,
    this.isRead = false,
    this.textColor = kSubTextColorUi14,
    this.press,
    this.topSize = 20,
    this.rigth = 20,
    this.left = 20,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Padding(
        padding: EdgeInsets.only(top: topSize,left: left,right: rigth),
        child: Row(
          children: [
            Container(
              height: 48,
              width: 48,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage(image),
                ),
              ),
            ),
            const SizedBox(width: 10),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        "Super Offer",
                        style: kSfUiSytle.copyWith(
                          color: kTextColorUi14,
                          fontSize: 18,
                        ),
                      ),
                      const Spacer(),
                      Text(
                        time,
                        style: kSfUiSytle.copyWith(fontSize: 11),
                      ),
                    ],
                  ),
                  const SizedBox(height: 5),
                  Text(
                    text,
                    style: kSfUiSytle.copyWith(overflow: TextOverflow.ellipsis),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
