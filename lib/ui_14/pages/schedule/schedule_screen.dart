import 'package:flutter/material.dart';
import 'package:modul_4_homework_obidxon/ui_14/compotations.dart';
import 'package:modul_4_homework_obidxon/ui_14/pages/popular_package/popular_package_screen.dart';
import 'package:modul_4_homework_obidxon/ui_14/pages/schedule/widget/my_schelude.dart';
import 'package:modul_4_homework_obidxon/ui_14/pages/schedule/widget/set_date.dart';
import 'package:modul_4_homework_obidxon/ui_14/widget/arrow_icon.dart';
import 'package:modul_4_homework_obidxon/ui_14/widget/notifications.dart';

class ScheduleScreenUi14 extends StatelessWidget {
  const ScheduleScreenUi14({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(
          left: 20,
          right: 20,
          top: 56,
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                arrowIcon(context),
                Text(
                  "Schedule",
                  style: kSfUiSytle.copyWith(
                    color: kTextColorUi14,
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const MyNotifications(
                  marjinRight: 0,
                )
              ],
            ),
            const SetDate(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "My Schedule",
                  style: kSfUiSytle.copyWith(
                      color: kTextColorUi14, fontWeight: FontWeight.w600),
                ),
                Text(
                  "View All",
                  style: kSfUiSytle.copyWith(
                      color: kPrimaryColorUi14, fontWeight: FontWeight.w400),
                ),
              ],
            ),
            const SizedBox(height: 10),
            MySchedule(
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return const PopularPackageScreen();
                    },
                  ),
                );
              },
              image: "assets/ui_14/images/Rectangle 29.png",
              text: "Niladri Reservoir",
              locationName: "Tekergat, Sunamgnj",
            ),
            const MySchedule(
              image: "assets/ui_14/images/Rectangle 29 (1).png",
              text: "High Rech Park",
              locationName: "Zeero Point, Sylhet",
            ),
            const MySchedule(
              image: "assets/ui_14/images/Rectangle 29 (2).png",
              text: "Darma Reservoir",
              locationName: "Darma, Kuningan",
            )
          ],
        ),
      ),
    );
  }
}
