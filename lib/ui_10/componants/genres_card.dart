import 'package:flutter/material.dart';
import 'package:modul_4_homework_obidxon/ui_10/constants.dart';

class GenresCardUi10 extends StatelessWidget {
  final String genre;
  const GenresCardUi10({super.key, required this.genre});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: EdgeInsets.only(left: kDefaultPaddingUi10),
      padding: EdgeInsets.symmetric(vertical: kDefaultPaddingUi10 / 4,horizontal: kDefaultPaddingUi10),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black26),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(
        genre,
        style: TextStyle(
          color: kTextColorUi10.withOpacity(0.8),
          fontSize: 16,
        ),
      ),
    );
  }
}
