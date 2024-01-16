import 'package:flutter/material.dart';
import 'package:modul_4_homework_obidxon/ui_10/componants/genres_card.dart';
import 'package:modul_4_homework_obidxon/ui_10/constants.dart';

class Genres extends StatelessWidget {
  const Genres({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> genres = [
      "Action",
      "Crime"
      "Drama",
      "Comedy",
      "Horror",
      "Animation",
    ];
    return Container(
      margin: EdgeInsets.symmetric(vertical: kDefaultPaddingUi10 / 2),
      height: 36,
      child: ListView.builder(
        itemCount: genres.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: ((context, index) {
          return GenresCardUi10(genre: genres[index]);
        }),
      ),
    );
  }
}

