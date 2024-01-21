import 'package:flutter/material.dart';
import 'package:modul_4_homework_obidxon/ui_14/compotations.dart';
import 'package:modul_4_homework_obidxon/ui_14/pages/popular_places/popular_place_card.dart';
import 'package:modul_4_homework_obidxon/ui_14/pages/popular_places/popular_places_screen.dart';
import 'package:modul_4_homework_obidxon/ui_14/widget/arrow_icon.dart';

class FavoritePlaces extends StatelessWidget {
  const FavoritePlaces({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(top: 56, left: 20, right: 20, bottom: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              MyAppBar(
                size: size,
                firsticon: arrowIcon(context),
                text: "Favorite Places",
              ),
              SizedBox(height: 20),
              Text(
                "Favorite Places",
                style: kSfUiSytle.copyWith(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: kTextColorUi14,
                ),
              ),
              SizedBox(height: 20),
              SizedBox(
                height: size.height,
                width: double.infinity,
                child: GridView(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisExtent: 200,
                      mainAxisSpacing: 20,
                      crossAxisSpacing: 20,),
                  children: const [
                    PopularPlacesCard(
                      image: "assets/ui_14/images/Rectangle 838.png",
                      title: "Niladri Reservoir",
                      locationName: "Tekergat, Sunamgnj",
                      isNotRichText: false,
                      iconColor: Colors.red,
                                            havePrice: false,

                    ),
                    PopularPlacesCard(
                      image: "assets/ui_14/images/Rectangle 838 (1).png",
                      title: "Casa Las Tirtugas",
                      locationName: "Av Damero, Mexico",
                      isNotRichText: false,
                      iconColor: Colors.red,
                                            havePrice: false,

                    ),
                    PopularPlacesCard(
                      image: "assets/ui_14/images/Rectangle 838 (2).png",
                      title: "Aonang Villa Resort",
                      locationName: "Bastola, Islampur",
                      isNotRichText: false,
                      iconColor: Colors.red,
                                            havePrice: false,

                    ),
                    PopularPlacesCard(
                      image: "assets/ui_14/images/Rectangle 838 (3).png",
                      title: "Rangauti Resort",
                      locationName: "Sylhet, Airport Road",
                      isNotRichText: false,
                      iconColor: Colors.red,
                                            havePrice: false,

                    ),
                    PopularPlacesCard(
                      image: "assets/ui_14/images/Rectangle 838 (1).png",
                      title: "Kachura Resort",
                      locationName: "Vellima, Island",
                      isNotRichText: false,
                      iconColor: Colors.red,
                      havePrice: false,
                    ),
                    PopularPlacesCard(
                      image: "assets/ui_14/images/Rectangle 839.png",
                      title: "Shakardu Resort",
                      locationName: "Shakartu, Pakistan",
                      isNotRichText: false,
                      iconColor: Colors.red,
                      havePrice: false,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
