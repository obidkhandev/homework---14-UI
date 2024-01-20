import 'package:flutter/material.dart';
import 'package:modul_4_homework_obidxon/ui_14/compotations.dart';
import 'package:modul_4_homework_obidxon/ui_14/pages/popular_places/popular_place_card.dart';
import 'package:modul_4_homework_obidxon/ui_14/widget/arrow_icon.dart';

class PopularPlacesScreenUi14 extends StatelessWidget {
  const PopularPlacesScreenUi14({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, top: 56, right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              MyAppBar(
                size: size,
                text: "Popular Places",
                firsticon: arrowIcon(context),
              ),
              SizedBox(height: size.height * 0.03),
              Text(
                "All Popular Places",
                style: kSfUiSytle.copyWith(
                  color: kTextColorUi14,
                  fontWeight: FontWeight.w600,
                  fontSize: 20,
                ),
              ),
              SizedBox(height: size.height * 0.03),
              const SizedBox(height: 20),
              GridView(
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisExtent: 238,
                    mainAxisSpacing: 20,
                    crossAxisSpacing: 20),
                children: const [
                  PopularPlacesCard(
                    image: "assets/ui_14/images/Rectangle 838.png",
                    title: "Niladri Reservoir",
                    rating: 4.7,
                    locationName: "Tekergat, Sunamgnj",
                    price: 459,
                  ),
                  PopularPlacesCard(
                    image: "assets/ui_14/images/Rectangle 838 (1).png",
                    title: "Casa Las Tirtugas",
                    locationName: "Av Damero, Mexico",
                    rating: 4.8,
                    price: 894,
                  ),
                  PopularPlacesCard(
                    image: "assets/ui_14/images/Rectangle 838 (2).png",
                    title: "Aonang Villa Resort",
                    locationName: "Bastola, Islampur",
                    rating: 4.3,
                    price: 761,
                  ),
                  PopularPlacesCard(
                    // isNotRichText: false,
                    image: "assets/ui_14/images/Rectangle 838 (3).png",
                    title: "Rangauti Resort",
                    locationName: "Sylhet, Airport Road",
                    rating: 4.5,
                    price: 857,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MyAppBar extends StatelessWidget {
  final Widget firsticon;
  final String text;
  const MyAppBar(
      {super.key,
      required this.size,
      required this.firsticon,
      this.text = "Text"});

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        firsticon,
        SizedBox(
          width: size.width * 0.2,
        ),
        Text(
          text,
          style: kSfUiSytle.copyWith(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: kTextColorUi14,
          ),
        ),
      ],
    );
  }
}
