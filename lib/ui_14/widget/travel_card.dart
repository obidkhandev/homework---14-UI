import 'package:flutter/material.dart';
import 'package:modul_4_homework_obidxon/ui_14/compotations.dart';
import 'package:modul_4_homework_obidxon/ui_14/widget/circle_button.dart';
import 'package:modul_4_homework_obidxon/ui_14/widget/location_and_profiles.dart';

class TravelCard extends StatelessWidget {
  final String image;
  final double rating;
  final String locationName;
  final String title;
  final Function()? press;
  const TravelCard({
    super.key,
    required this.image,
    required this.rating,
    required this.locationName,
    required this.title,
    this.press,
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
              color: Color.fromRGBO(180, 188, 201, 0.12),),
        ],
      ),
      child: Column(
        children: [
          GestureDetector(
            onTap: press,
            child: Container(
              alignment: Alignment.topRight,
              padding: const EdgeInsets.only(right: 10, top: 10),
              height: 276,
              width: 240,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(image),
                ),
              ),
              child: CircleSmallButtonUi14(
                icon: Icons.bookmark_border_outlined,
                backgroundColor: kSubTextColorUi14.withOpacity(.2),
                iconColor: Colors.white,
              ),
            ),
          ),
          const SizedBox(height: 14),
          Row(
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontWeight: FontWeight.w500,
                  fontFamily: "SF UI Display",
                  fontSize: 18,
                  color: kTextColorUi14,
                ),
              ),
              const Spacer(),
              const Icon(
                Icons.star,
                color: Colors.amber,
                size: 20,
              ),
              Text(
                "$rating",
                style: const TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 15,
                  color: kTextColorUi14,
                ),
              )
            ],
          ),
          const SizedBox(height: 8),
          LocationAndProfilesStack(
            locationName: locationName,
            color: kSubTextColorUi14,
          ),
        ],
      ),
    );
  }
}

