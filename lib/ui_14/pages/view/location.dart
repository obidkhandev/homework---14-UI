import 'package:flutter/material.dart';
import 'package:modul_4_homework_obidxon/ui_14/compotations.dart';
import 'package:modul_4_homework_obidxon/ui_14/widget/rating.dart';
import 'package:modul_4_homework_obidxon/ui_14/widget/rounded_button.dart';

import '../../widget/location_and_profiles.dart';

class LocationCardViewPage extends StatelessWidget {
  const LocationCardViewPage({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      // height: 200,
      width: 335,
      decoration: BoxDecoration(
        color: kViewContainerColorUi14.withOpacity(.9),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Niladri Reservoir",
                style: kSfUiSytle.copyWith(
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                    fontSize: 18),
              ),
              const RatingUi14(
                score: 4.7,
                textColor: Colors.white,
              )
            ],
          ),
          const SizedBox(height: 10),
          const LocationAndProfilesStack(
            locationName: "Tekergat, Sunamgnj",
            color: Colors.white,
            colorIcon: Colors.white,
          ),
          const SizedBox(height: 10),
          Row(
            children: [
              const Icon(Icons.access_time_rounded,color: Colors.white,),
              Text("45 Minutes",style: kSfUiSytle.copyWith(color: Colors.white),)
            ],
          ),
          const SizedBox(height: 10),
          RoundedButtonUi14(size: size, text: "See On The Map"),
        ],
      ),
    );
  }
}
