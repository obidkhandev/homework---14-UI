import 'package:flutter/material.dart';
import 'package:modul_4_homework_obidxon/ui_14/compotations.dart';

class HomeScreenUi14 extends StatefulWidget {
  const HomeScreenUi14({super.key});

  @override
  State<HomeScreenUi14> createState() => _HomeScreenUi14State();
}

int _index = 0;

class _HomeScreenUi14State extends State<HomeScreenUi14> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      bottomNavigationBar: CustomBottomNavBar(),
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
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(22),
                    color: Color.fromRGBO(247, 247, 249, 1),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      PersonCircle(),
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
                  margin: EdgeInsets.only(right: 20),
                  height: 44,
                  width: 44,
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
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
                Text(
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
                    Text(
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
                padding: EdgeInsets.only(right: 20, top: 20),
                scrollDirection: Axis.horizontal,
                children: [
                  Container(
                    height: 384,
                    width: 268,
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(24),
                        boxShadow: [
                          BoxShadow(
                              offset: Offset(0, 6),
                              blurRadius: 16,
                              color: Color.fromRGBO(180, 188, 201, 0.12))
                        ]),
                    child: Column(
                      children: [
                        Container(
                          height: 286,
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
                        Row(
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
                        Row(
                          children: [
                            Icon(
                              Icons.location_on_outlined,
                              color: kSubTextColorUi14,
                            ),
                            Text(
                              "Tekergat, Sunamgnj",
                              style: TextStyle(
                                fontFamily: "SF UI Display",
                                color: kSubTextColorUi14,
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class PersonCircle extends StatelessWidget {
  const PersonCircle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 37,
      width: 37,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Color.fromRGBO(255, 234, 223, 1),
        image: DecorationImage(
          image: AssetImage('assets/ui_14/images/Group.png'),
        ),
      ),
    );
  }
}

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Colors.white,
      shadowColor: Color.fromRGBO(175, 184, 198, 0.12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(icon: Icon(Icons.home), onPressed: () {}),
          IconButton(icon: Icon(Icons.calendar_today), onPressed: () {}),
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              color: kPrimaryColorUi14,
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                    offset: Offset(0, 8),
                    blurRadius: 20,
                    color: Color.fromRGBO(13, 110, 253, 0.17)),
              ],
            ),
            child: Icon(Icons.search, color: Colors.white),
          ),
          IconButton(icon: Icon(Icons.message), onPressed: () {}),
          IconButton(icon: Icon(Icons.person), onPressed: () {}),
        ],
      ),
    );
  }
}
