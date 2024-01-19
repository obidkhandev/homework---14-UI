import 'package:flutter/material.dart';
import 'package:modul_4_homework_obidxon/ui_14/compotations.dart';
import 'package:modul_4_homework_obidxon/ui_14/widget/person_circle.dart';


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
                    color: Color.fromRGBO(247, 247, 249, 1),
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
                Container(
                  margin: const EdgeInsets.only(right: 20),
                  height: 44,
                  width: 44,
                  padding: const EdgeInsets.all(5),
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: kLightGrayColor,
                    image: DecorationImage(
                      image:
                          AssetImage("assets/ui_14/images/Notifications.png"),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Text(
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
                  TravelCard(),
                  SizedBox(width: 20,),
                  TravelCard(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TravelCard extends StatelessWidget {
  const TravelCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 384,
      width: 268,
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(24),
          boxShadow: const [
            BoxShadow(
                offset: Offset(0, 6),
                blurRadius: 16,
                color: Color.fromRGBO(180, 188, 201, 0.12))
          ],),
      child: Column(
        children: [
          Container(
            height: 276,
            width: 240,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                    'assets/ui_14/images/Rectangle 27.png'),
              ),
            ),
          ),
          SizedBox(height: 14,),
          const Row(
            children: [
              Text(
                'Niladri Reservoir',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontFamily: "SF UI Display",
                  fontSize: 18,
                  color: kTextColorUi14,
                ),
              ),
              Spacer(),
              Icon(
                Icons.star,
                color: Colors.amber,
                size: 20,
              ),
              Text(
                "4.7",
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 15,
                    color: kTextColorUi14),
              )
            ],
          ),
          SizedBox(height: 8,),
          Stack(
            children: [
              Row(
                children: [
                  const Icon(
                    Icons.location_on_outlined,
                    color: kSubTextColorUi14,
                  ),
                  const Text(
                    "Tekergat, Sunamgnj",
                    style: TextStyle(
                      fontFamily: "SF UI Display",
                      color: kSubTextColorUi14,
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Image.asset(
                      "assets/ui_14/images/Ellipse 21.png"),
                ],
              ),
              Positioned(
                right: 30,
                child: Image.asset(
                    "assets/ui_14/images/Ellipse 23.png"),
              ),
              Positioned(
                right: 17,
                child: Image.asset(
                    "assets/ui_14/images/Ellipse 25.png",),
              ),
              Positioned(
                right: 3,
                child: Container(
                  alignment: Alignment.center,
                  height: 24,
                  width: 24,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color.fromRGBO(229, 244, 255, 1),
                
                  ),
                  child: const Text("+50",style: TextStyle(fontFamily: "SF UI Display",fontSize: 11,fontWeight: FontWeight.w400,),),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}

