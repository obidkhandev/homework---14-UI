// ignore_for_file: file_names

import 'package:flutter/material.dart';

class LocationNameAndIcon extends StatelessWidget {
  const LocationNameAndIcon({
    super.key,
    required this.colorIcon,
    required this.locationName,
    required this.color,
    this.icon =  Icons.location_on_outlined,
    this.fontSize = 15,
    this.iconSize = 24,
  });

  final Color colorIcon;
  final String locationName;
  final Color color;
  final double fontSize;
  final double iconSize;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
         icon,
          color: colorIcon,
          size: iconSize,
        ),
        const SizedBox(width: 5),
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
