import 'package:flutter/material.dart';
import 'package:modul_4_homework_obidxon/ui_10/componants/genres_card.dart';
import 'package:modul_4_homework_obidxon/ui_10/constants.dart';
import 'package:modul_4_homework_obidxon/ui_10/model/movie.dart';

class GenresDetails extends StatelessWidget {
  const GenresDetails({
    super.key,
    required this.movie,
  });

  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPaddingUi10 / 2),
      child: SizedBox(
        height: 36,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: movie.genra.length,
          itemBuilder: ((context, index) {
            return GenresCardUi10(
              genre: movie.genra[index],
            );
          }),
        ),
      ),
    );
  }
}
