import 'package:flutter/material.dart';

class LocationNameAndIcon extends StatelessWidget {
  const LocationNameAndIcon(
      {super.key,
      required this.colorIcon,
      required this.locationName,
      required this.color,
      this.fontSize = 15,this.iconSize = 24,});

  final Color colorIcon;
  final String locationName;
  final Color color;
  final double fontSize;
  final double iconSize;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.location_on_outlined,
          color: colorIcon,
          size: iconSize,
        ),
        Text(
          locationName,
          style: TextStyle(
            fontFamily: "SF UI Display",
            color: color,
            fontSize: fontSize,
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }
}
