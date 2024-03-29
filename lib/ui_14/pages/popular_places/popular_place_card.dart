import 'package:flutter/material.dart';
import 'package:modul_4_homework_obidxon/ui_14/compotations.dart';
import 'package:modul_4_homework_obidxon/ui_14/pages/popular_places/popular_place_image.dart';
import 'package:modul_4_homework_obidxon/ui_14/widget/locationName_icon.dart';

class PopularPlacesCard extends StatelessWidget {
  final String image;
  final String title;
  final String locationName;
  final int price;
  final double rating;
  final bool isNotRichText;
  final Color iconColor;
  final bool haveIcon;
  final bool havePrice;
  const PopularPlacesCard({
    super.key,
    required this.image,
    required this.title,
    required this.locationName,
    this.price = 459,
    this.rating = 4.7,
    this.iconColor = Colors.white,
    this.isNotRichText = true,
    this.haveIcon = true,
    this.havePrice = true,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 160,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: const [
          BoxShadow(
            offset: Offset(0, 6),
            blurRadius: 16,
            color: Color.fromRGBO(180, 188, 201, 0.12),
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          PopularPlaceImage(
            image: image,
            iconColor: iconColor,
            haveIcon: haveIcon,
          ),
          const SizedBox(height: 5),
          Text(
            title,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: kSfUiSytle.copyWith(
              fontWeight: FontWeight.w600,
              color: kTextColorUi14,
            ),
          ),
          LocationNameAndIcon(
            fontSize: 12,
            colorIcon: kSubTextColorUi14,
            locationName: locationName,
            color: kSubTextColorUi14,
            iconSize: 16,
          ),
          if (isNotRichText)
            Row(
              children: [
                for (int i = 0; i < 3; i++)
                  const Icon(
                    Icons.star,
                    color: Colors.amber,
                    size: 16,
                  ),
                const SizedBox(width: 10),
                Text(
                  rating.toString(),
                  style: kSfUiSytle.copyWith(
                    fontSize: 12,
                    color: kTextColorUi14,
                  ),
                ),
              ],
            ),
          if (havePrice)
            RichText(
              text: TextSpan(
                style: kSfUiSytle.copyWith(
                  color: kPrimaryColorUi14,
                  fontSize: 12,
                ),
                children: [
                  TextSpan(
                    text: "\$$price/",
                  ),
                  const TextSpan(
                    text: "Person",
                    style: TextStyle(
                      color: kSubTextColorUi14,
                    ),
                  ),
                ],
              ),
            )
        ],
      ),
    );
  }
}
