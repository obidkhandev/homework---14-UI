import 'package:flutter/material.dart';
import 'package:modul_4_homework_obidxon/ui_14/compotations.dart';
import 'package:modul_4_homework_obidxon/ui_14/widget/locationName_icon.dart';

class LocationAndProfilesStack extends StatelessWidget {
  final String locationName;
  final Color color;
  final Color colorIcon;
  const LocationAndProfilesStack({
    super.key,
    required this.locationName,
    required this.color,
    this.colorIcon = kSubTextColorUi14
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Row(
          children: [
            LocationNameAndIcon(colorIcon: colorIcon, locationName: locationName, color: color),
            SizedBox(
              width: 10
            ),
            // Spacer(),
          ],
        ),
        Positioned(
          right: 45,
          child: Image.asset("assets/ui_14/images/Ellipse 21.png")),
        Positioned(
          right: 30,
          child: Image.asset("assets/ui_14/images/Ellipse 23.png"),
        ),
        Positioned(
          right: 17,
          child: Image.asset(
            "assets/ui_14/images/Ellipse 25.png",
          ),
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
            child: const Text(
              "+50",
              style: TextStyle(
                fontFamily: "SF UI Display",
                fontSize: 11,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        )
      ],
    );
  }
}

