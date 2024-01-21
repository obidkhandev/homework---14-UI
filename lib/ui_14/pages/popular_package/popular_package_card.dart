import 'package:flutter/material.dart';
import 'package:modul_4_homework_obidxon/ui_14/compotations.dart';
import 'package:modul_4_homework_obidxon/ui_14/widget/locationName_icon.dart';
import 'package:modul_4_homework_obidxon/ui_14/widget/rating.dart';

class PopularPackageCard extends StatelessWidget {
  final String image;
  final String title;
  final String date;
  final double rating;
  final int price;
  const PopularPackageCard({
    super.key,
    required this.image,
    required this.title,
    required this.date,
    required this.rating, required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 140,
      width: double.infinity,
      margin: EdgeInsets.symmetric(vertical: 15),
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 6),
            blurRadius: 20,
            color: Color.fromRGBO(180, 188, 201, 0.14),
          )
        ],
      ),
      child: Row(
        children: [
          Image.asset(image),
          SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: kSfUiSytle.copyWith(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: kTextColorUi14),
              ),
              LocationNameAndIcon(
                colorIcon: kSubTextColorUi14,
                locationName: date,
                color: kSubTextColorUi14,
                icon: Icons.calendar_month_outlined,
                iconSize: 16,
              ),
              RatingUi14(
                score: rating,
                starCount: 3,
              ),
            ],
          ),
          Spacer(),
          Align(
            alignment: Alignment.topRight,
            child: Container(
              alignment: Alignment.center,
              width: 44,
              height: 26,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: kPrimaryColorUi14,
              ),
              child: Text(
                "\$$price",
                style: kSfUiSytle.copyWith(
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                    color: Colors.white),
              ),
            ),
          )
        ],
      ),
    );
  }
}
