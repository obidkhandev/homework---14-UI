import 'package:flutter/material.dart';
import 'package:modul_4_homework_obidxon/ui_14/compotations.dart';
import 'package:modul_4_homework_obidxon/ui_14/pages/message/chat_image_online.dart';

class ChatCard extends StatelessWidget {
  final String image;
  final String personName;
  final String text;
  final String time;
  final bool isRead;
  final Color iconColor;
  final Color onlineColor;
  final Color textColor;
  final Function()? press;
  const ChatCard(
      {super.key,
      required this.image,
      required this.personName,
      required this.text,
      required this.time,
      this.isRead = false,
      required this.iconColor,
      required this.onlineColor,
      this.textColor = kSubTextColorUi14,
      this.press,
      });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Padding(
        padding: const EdgeInsets.only(top: 20),
        child: Row(
          children: [
            ChatImageAndOnline(
              image: image,
              color: onlineColor,
            ),
            SizedBox(width: 10),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        personName,
                        style: kSfUiSytle.copyWith(
                          color: kTextColorUi14,
                          fontSize: 18,
                        ),
                      ),
                      Spacer(),
                      Icon(isRead ? Icons.done_all_rounded : Icons.check,
                          color: iconColor),
                      Text(
                        time,
                        style: kSfUiSytle.copyWith(fontSize: 11),
                      ),
                    ],
                  ),
                  SizedBox(height: 5),
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
