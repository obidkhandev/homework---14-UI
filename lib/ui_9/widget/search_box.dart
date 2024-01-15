
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:modul_4_homework_obidxon/ui_9/constants.dart';

class SearchBoxUi9 extends StatelessWidget {
  final ValueChanged? onChanged;
  const SearchBoxUi9({
    super.key,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          border: Border.all(
            color: kSecondaryColorUi9.withOpacity(0.32),
          )),
      child: TextField(
        onChanged: onChanged,
        decoration: InputDecoration(
          border: InputBorder.none,
          icon: SvgPicture.asset('assets/ui_9/icons/search.svg'),
          hintText: 'Search Here',
          hintStyle: const TextStyle(color: kSecondaryColorUi9),
        ),
      ),
    );
  }
}
