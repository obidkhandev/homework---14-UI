import 'package:flutter/material.dart';
import 'package:modul_4_homework_obidxon/ui_14/compotations.dart';
import 'package:modul_4_homework_obidxon/ui_14/pages/details/details_screen.dart';
import 'package:modul_4_homework_obidxon/ui_14/pages/notification/notification_screen.dart';
import 'package:modul_4_homework_obidxon/ui_14/widget/notifications.dart';
import 'package:modul_4_homework_obidxon/ui_14/widget/person_circle.dart';
import 'package:modul_4_homework_obidxon/ui_14/widget/travel_card.dart';

class HomeScreenUi14 extends StatefulWidget {
  const HomeScreenUi14({super.key});

  @override
  State<HomeScreenUi14> createState() => _HomeScreenUi14State();
}

class _HomeScreenUi14State extends State<HomeScreenUi14> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // bottomNavigationBar: BottomNavBarUi14(),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, top: 56),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 44,
                  width: 118,
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(22),
                    color: const Color.fromRGBO(247, 247, 249, 1),
                  ),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      PersonCircleUi14(
                        image: "assets/ui_14/images/Group.png",
                        color: Color.fromRGBO(255, 234, 223, 1),
                      ),
                      Text(
                        'Leonardo',
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            fontFamily: "SF UI Display"),
                      ),
                    ],
                  ),
                ),
                GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return NotificationScreen();
                          },
                        ),
                      );
                    },
                    child: MyNotifications())
              ],
            ),
            const SizedBox(height: 20),
            const Text(
              'Explore the',
              style: TextStyle(
                fontFamily: "SF UI Display",
                fontWeight: FontWeight.w300,
                fontSize: 38,
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Beatiful ',
                  style: TextStyle(
                    fontFamily: "SF UI Display",
                    fontWeight: FontWeight.w700,
                    fontSize: 38,
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'world!',
                      style: TextStyle(
                        fontFamily: "SF UI Display",
                        fontWeight: FontWeight.w700,
                        fontSize: 38,
                        color: kActionColorUi14,
                      ),
                    ),
                    Image.asset('assets/ui_14/images/Vector 2524 (2).png')
                  ],
                ),
              ],
            ),
            const SizedBox(height: 20),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Best Destination",
                  style: TextStyle(
                    fontFamily: "SF UI Display",
                    fontWeight: FontWeight.w600,
                    fontSize: 20,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: Text(
                    'View all',
                    style: TextStyle(
                      fontFamily: "SF UI Display",
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      color: kPrimaryColorUi14,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 400,
              width: double.infinity,
              child: ListView(
                padding: const EdgeInsets.only(right: 20, top: 20),
                scrollDirection: Axis.horizontal,
                children: [
                  TravelCard(
                    image: "assets/ui_14/images/Rectangle 27.png",
                    rating: 4.7,
                    locationName: "Tekergat, Sunamgnj",
                    title: "Niladri Reservoir",
                    press: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return DetailScreenUi14();
                          },
                        ),
                      );
                    },
                  ),
                  const SizedBox(width: 20),
                  TravelCard(
                    image: "assets/ui_14/images/Rectangle 27.png",
                    rating: 4.8,
                    locationName: "Tekergat, Sunamgnj",
                    title: "Niladri Reservoir",
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
