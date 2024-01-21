import 'package:flutter/material.dart';
import 'package:modul_4_homework_obidxon/ui_1/constants.dart';
import 'package:modul_4_homework_obidxon/ui_14/compotations.dart';
import 'package:modul_4_homework_obidxon/ui_14/pages/details/background_detail.dart';
import 'package:modul_4_homework_obidxon/ui_14/pages/popular_places/popular_places_screen.dart';
import 'package:modul_4_homework_obidxon/ui_14/pages/view/view_screen.dart';
import 'package:modul_4_homework_obidxon/ui_14/widget/rating.dart';
import 'package:modul_4_homework_obidxon/ui_14/widget/rounded_button.dart';

class DetailScreenUi14 extends StatelessWidget {
  const DetailScreenUi14({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            DetailBackgroundUi14(size: size),
            Container(
              margin: EdgeInsets.only(top: size.height / 2.35),
              padding: const EdgeInsets.all(20),
              // height: size.height * 0.5,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      margin: const EdgeInsets.only(bottom: 20),
                      height: 5,
                      width: 36,
                      decoration: BoxDecoration(
                          color: kSubTextColorUi14,
                          borderRadius: BorderRadius.circular(16)),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      RichText(
                        text: const TextSpan(
                          children: [
                            TextSpan(
                              text: "Niladri Reservoir\n",
                              style: TextStyle(
                                  fontFamily: "SF UI Display",
                                  fontWeight: FontWeight.w500,
                                  fontSize: 24,
                                  color: kTextColorUi14),
                            ),
                            TextSpan(
                              text: "Tekergat, Sunamgnj",
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 15,
                                fontFamily: "SF UI Display",
                                color: kSubTextColorUi14,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Image.asset("assets/ui_14/images/Ellipse 25 (1).png"),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      const Icon(
                        Icons.location_on_outlined,
                        color: kSubTextColorUi14,
                      ),
                      const Text(
                        "Tekergat",
                        style: kSfUiSytle,
                      ),
                      SizedBox(width: size.width * 0.15),
                      const RatingUi14(
                        score: 4.7,
                      ),
                      const Text(
                        "(2498)",
                        style: kSfUiSytle,
                      ),
                      const Spacer(),
                      Text(
                        "\$59/",
                        style: kSfUiSytle.copyWith(
                          color: kPrimaryColorUi14,
                        ),
                      ),
                      const Text(
                        "Person",
                        style: kSfUiSytle
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Image.asset("assets/ui_14/images/Rectangle 822.png"),
                      Image.asset("assets/ui_14/images/Rectangle 823.png"),
                      Image.asset("assets/ui_14/images/Rectangle 824.png"),
                      Image.asset("assets/ui_14/images/Rectangle 825.png"),
                      GestureDetector(
                        onTap: () {
                          Future(() {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => const PopularPlacesScreenUi14()));
      });
                        },
                        child: Container(
                          height: 42,
                          width: 42,
                          alignment: Alignment.center,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(
                                  "assets/ui_14/images/Rectangle 826.png"),
                            ),
                          ),
                          child: Text(
                            "+16",
                            style: kSfUiSytle.copyWith(color: Colors.white),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Text(
                    "About Destination",
                    style: kSfUiSytle.copyWith(
                      fontWeight: FontWeight.w600,
                      fontSize: 20,
                      color: kTextColor,
                    ),
                  ),
                  const SizedBox(height: 10),
                  RichText(
                    text: TextSpan(
                      style: kSfUiSytle.copyWith(fontSize: 13, height: 1.5),
                      children: const [
                        TextSpan(
                          text:
                              "You will get a complete travel package on the beaches. Packages in the form of airline tickets, recommended Hotel rooms, Transportation, Have you ever been on holiday to the Greek ETC... ",
                        ),
                        TextSpan(
                          text: "Read More",
                          style: TextStyle(color: kActionColorUi14),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  RoundedButtonUi14(
                    size: size,
                    text: "Book Now",
                    press: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return const ViewScreenUi14();
                          },
                        ),
                      );
                    },
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
