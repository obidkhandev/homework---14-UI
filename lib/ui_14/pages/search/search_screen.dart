import 'package:flutter/material.dart';
import 'package:modul_4_homework_obidxon/ui_14/compotations.dart';
import 'package:modul_4_homework_obidxon/ui_14/pages/popular_places/popular_place_card.dart';
import 'package:modul_4_homework_obidxon/ui_14/pages/profile/profile_screen.dart';
import 'package:modul_4_homework_obidxon/ui_14/pages/sing/compotations/email_field_container.dart';
import 'package:modul_4_homework_obidxon/ui_14/widget/line_border.dart';

class SearchScreenUi14 extends StatelessWidget {
  const SearchScreenUi14({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(
            left: 20,
            top: 56,
            right: 20,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              MyAppBar2(
                title: "Search",
                child: Text(
                  "Cancel",
                  style: kSfUiSytle.copyWith(
                    fontSize: 16,
                    color: kPrimaryColorUi14,
                  ),
                ),
              ),
              SizedBox(height: 10),
              const EmailFieldContainer(
                child: TextField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Search Places",
                      hintStyle: kSfUiSytle,
                      suffix: LineBorder(
                        height: 24,
                        width: 0,
                      ),
                      suffixIcon: Icon(
                        Icons.mic,
                        color: kSubTextColorUi14,
                      ),
                      icon: Icon(
                        Icons.search,
                        color: kSubTextColorUi14,
                      )),
                ),
              ),
              SizedBox(height: 20),
              Text(
                "Search Places",
                style: kSfUiSytle.copyWith(
                  color: kTextColorUi14,
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: 20),
              SizedBox(
                height: size.height,
                width: double.infinity,
                child: GridView(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisExtent: 230,
                    mainAxisSpacing: 20,
                    crossAxisSpacing: 20,
                  ),
                  children: const [
                    PopularPlacesCard(
                      image: "assets/ui_14/images/Rectangle 839.png",
                      title: "Niladri Reservoir",
                      locationName: "Tekergat, Sunamgnj",
                      isNotRichText: false,
                      haveIcon: false,
                      price: 894,
                    ),
                    PopularPlacesCard(
                      image: "assets/ui_14/images/Rectangle 838 (2).png",
                      title: "Casa Las Tirtugas",
                      locationName: "Av Damero, Mexico",
                      isNotRichText: false,
                      haveIcon: false,
                      price: 894,
                    ),
                    PopularPlacesCard(
                      image: "assets/ui_14/images/Rectangle 838 (1).png",
                      title: "Aonang Villa Resort",
                      locationName: "Bastola, Islampur",
                      isNotRichText: false,
                      haveIcon: false,
                    ),
                    PopularPlacesCard(
                      image: "assets/ui_14/images/Rectangle 838 (3).png",
                      title: "Rangauti Resort",
                      locationName: "Sylhet, Airport Road",
                      isNotRichText: false,
                      haveIcon: false,
                      // havePrice: ,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
