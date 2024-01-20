import 'package:flutter/material.dart';
import 'package:modul_4_homework_obidxon/ui_14/compotations.dart';
import 'package:modul_4_homework_obidxon/ui_14/pages/popular_package/popular_package_card.dart';
import 'package:modul_4_homework_obidxon/ui_14/pages/popular_places/popular_places_screen.dart';
import 'package:modul_4_homework_obidxon/ui_14/widget/arrow_icon.dart';

class PopularPackageScreen extends StatelessWidget {
  const PopularPackageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(left: 20, top: 56, right: 20, bottom: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              MyAppBar(
                size: size,
                firsticon: arrowIcon(context),
                text: "Popular Package",
              ),
              SizedBox(height: 20),
              Text(
                "All Popular Trip Package",
                style: kSfUiSytle.copyWith(
                  color: kTextColorUi14,
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: 20),
              PopularPackageCard(
                image: "assets/ui_14/images/Rectangle 843 (4).png",
                title: "Santorini Islnd",
                date: "16 July-28 July",
                price: 820,
                rating: 4.8,
              ),
              PopularPackageCard(
                image: "assets/ui_14/images/Rectangle 843 (1).png",
                title: "Bukita Rayandro",
                date: "20 Sep-29 Sep",
                price: 720,
                rating: 4.3,
              ),
              PopularPackageCard(
                image: "assets/ui_14/images/Rectangle 843 (2).png",
                title: "Cluster Omega",
                date: "14 Nov-22Nov",
                price: 942,
                rating: 4.9,
              ),
              PopularPackageCard(
                image: "assets/ui_14/images/Rectangle 843 (3).png",
                title: "Shajek Bandorban",
                date: "12 Dec-18 Dec",
                price: 860,
                rating: 4.5,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

