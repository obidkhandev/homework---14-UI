import 'package:flutter/material.dart';
import 'package:modul_4_homework_obidxon/ui_14/compotations.dart';
import 'package:modul_4_homework_obidxon/ui_14/pages/schedule/widget/date_and_calendar.dart';
import 'package:modul_4_homework_obidxon/ui_14/widget/locationName_icon.dart';

class MySchedule extends StatelessWidget {
  final String image;
  final String locationName;
  final String text;
  final Function()? press;
  const MySchedule({
    super.key,
    required this.image,
    required this.locationName,
    required this.text, this.press,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        // height: 100,
        width: double.infinity,
        padding: const EdgeInsets.all(14),
        margin: const EdgeInsets.symmetric(vertical: 10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          boxShadow: const [
            BoxShadow(
              offset: Offset(0, 6),
              blurRadius: 16,
              color: Color.fromRGBO(180, 188, 201, 0.12),
            )
          ],
        ),
        child: Row(
          children: [
            Image.asset(image),
            const SizedBox(width: 20),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const DateAndCalendar(),
                Text(
                  text,
                  style: kSfUiSytle.copyWith(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: kTextColorUi14,
                  ),
                ),
                LocationNameAndIcon(
                  colorIcon: kSubTextColorUi14,
                  locationName: locationName,
                  color: kSubTextColorUi14,
                ),
              ],
            ),
            const Spacer(),
            const Icon(
              Icons.arrow_forward_ios_rounded,
              color: kSubTextColorUi14,
            )
          ],
        ),
      ),
    );
  }
}
