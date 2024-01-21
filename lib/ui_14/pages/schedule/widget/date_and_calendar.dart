import 'package:flutter/material.dart';
import 'package:modul_4_homework_obidxon/ui_14/compotations.dart';

class DateAndCalendar extends StatelessWidget {
  final String date;
  const DateAndCalendar({
    super.key,
    this.date = "26 January 2022",
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(
          Icons.calendar_month_outlined,
          color: kSubTextColorUi14,
          size: 20,
        ),
        const SizedBox(width: 10),
        Text(
          date,
          style: kSfUiSytle.copyWith(fontSize: 13),
        ),
      ],
    );
  }
}
