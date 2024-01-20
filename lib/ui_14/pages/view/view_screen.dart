import 'package:flutter/material.dart';
import 'package:modul_4_homework_obidxon/ui_14/compotations.dart';
import 'package:modul_4_homework_obidxon/ui_14/pages/view/background_image.dart';
import 'package:modul_4_homework_obidxon/ui_14/pages/view/circle.dart';
import 'package:modul_4_homework_obidxon/ui_14/pages/view/simple_line.dart';
import 'package:modul_4_homework_obidxon/ui_14/pages/view/view_card.dart';
import 'package:modul_4_homework_obidxon/ui_14/widget/circle_button.dart';
import 'package:modul_4_homework_obidxon/ui_14/widget/travel_card_listView.dart';

class ViewScreenUi14 extends StatelessWidget {
  const ViewScreenUi14({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: BackgroundImageViewScreen(
        size: size,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const SizedBox(width: 20),
                CircleSmallButtonUi14(
                  height: 44,
                  width: 44,
                  backgroundColor: kSubTextColorUi14.withOpacity(.2),
                  icon: Icons.arrow_back_ios_new,
                  iconColor: Colors.white,
                ),
                SizedBox(
                  width: size.width / 3,
                ),
                Text(
                  "View",
                  style: kSfUiSytle.copyWith(
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                      color: Colors.white),
                )
              ],
            ),
            ViewCard(
              top: 124,
              left: 187,
              image: "assets/ui_14/images/Rectangle 833.png",
              viewName: "La-Hotel",
              mil: 2.09,
            ),
            SimleLineUi14(),
            CircleUi14(),
            ViewCard(
              left: 20,
              top: 73,
              image: "assets/ui_14/images/Rectangle 833 (1).png",
              viewName: "Lemon Garden",
              mil: 2.09,
              width: 209,
            ),
            SimleLineUi14(
              left: 33,
            ),
            CircleUi14(left: 22),
            SizedBox(
              height: 20,
            ),
            TravelCardListView(size: size)
          ],
        ),
      ),
    );
  }
}


