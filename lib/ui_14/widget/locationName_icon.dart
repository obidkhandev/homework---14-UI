import 'package:flutter/material.dart';

class LocationNameAndIcon extends StatelessWidget {
  const LocationNameAndIcon({
    super.key,
    required this.colorIcon,
    required this.locationName,
    required this.color,
  });

  final Color colorIcon;
  final String locationName;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.location_on_outlined,
          color: colorIcon,
        ),
      Text(
      locationName,
      style: TextStyle(
        fontFamily: "SF UI Display",
        color: color,
        fontSize: 15,
        fontWeight: FontWeight.w400,
      ),
    ),
      ],
    );
  }
}
