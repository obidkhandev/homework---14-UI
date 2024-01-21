import 'package:flutter/material.dart';
import 'package:modul_4_homework_obidxon/ui_14/compotations.dart';
import 'package:modul_4_homework_obidxon/ui_14/pages/notification/notification_card.dart';
import 'package:modul_4_homework_obidxon/ui_14/widget/line_border.dart';
import 'package:modul_4_homework_obidxon/ui_14/widget/my_app_bar2.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 56),
            child: MyAppBar2(
              title: "Notification",
              child: Text(
                "Clear all",
                style: kSfUiSytle.copyWith(
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                  color: kPrimaryColorUi14,
                ),
              ),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(left: 25, top: 20, bottom: 10, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Recent",
                  style: kSfUiSytle.copyWith(color: kPrimaryColorUi14),
                ),
                Text(
                  "Earlier",
                  style: kSfUiSytle.copyWith(color: kTextColorUi14),
                ),
                Text(
                  "Archieved",
                  style: kSfUiSytle.copyWith(color: kTextColorUi14),
                ),
              ],
            ),
          ),
          const LineBorder(
            height: 0,
            width: double.infinity,
          ),
          Container(
            margin: const EdgeInsets.only(top: 20),
            // padding: EdgeInsets.symmetric(vertical: 10),
            alignment: Alignment.center,
            width: double.infinity,
            height: 76,
            color: const Color.fromRGBO(229, 244, 255, 1),
            child: const NotificationCard(
              topSize: 10,
              image: "assets/ui_14/images/Ellipse 897 (1).png",
              text: "Get 60% off in our first booking",
              time: "Sun,12:40pm",
            ),
          ),
          const NotificationCard(
            topSize: 10,
              image: "assets/ui_14/images/Ellipse 897 (2).png",
              text: "Get 60% off in our first booking",
              time: "Mon,11:50pm",
            ),
           const NotificationCard(
              image: "assets/ui_14/images/Ellipse 897 (3).png",
              text: "Get 60% off in our first booking",
              time: "Tue,10:56pm",
            ),
            const NotificationCard(
              image: "assets/ui_14/images/Ellipse 897 (4).png",
              text: "Get 60% off in our first booking",
              time: "Wed,12:40pm",
            ),
            const NotificationCard(
              image: "assets/ui_14/images/Ellipse 897 (5).png",
              text: "Get 60% off in our first booking",
              time: "Fri,11:50pm",
            ),
            const NotificationCard(
              image: "assets/ui_14/images/Ellipse 897 (6).png",
              text: "Get 60% off in our first booking",
              time: "Sat,10:56pm",
            ),
        ],
      ),
    );
  }
}
