import 'package:flutter/material.dart';
import 'package:modul_4_homework_obidxon/ui_10/componants/back_drop_rating.dart';
import 'package:modul_4_homework_obidxon/ui_10/componants/cast_and_crew.dart';
import 'package:modul_4_homework_obidxon/ui_10/componants/genres_detail.dart';
import 'package:modul_4_homework_obidxon/ui_10/componants/title_duration_andfab.dart';
import 'package:modul_4_homework_obidxon/ui_10/constants.dart';
import 'package:modul_4_homework_obidxon/ui_10/model/movie.dart';

class BodyDetailsUi10 extends StatelessWidget {
  final Movie movie;
  const BodyDetailsUi10({super.key, required this.movie});

  @override
  Widget build(BuildContext context) {
    // Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          BackdropandRatingUi10(movie: movie),
          const SizedBox(
            height: kDefaultPaddingUi10 / 2,
          ),
          TitleDurationAndFabBtnUi10(movie: movie),
          GenresDetails(movie: movie),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: kDefaultPaddingUi10,
              vertical: kDefaultPaddingUi10 / 2,
            ),
            child: Text(
              'Plot Summary',
              style: Theme.of(context).textTheme.headlineSmall,
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: kDefaultPaddingUi10),
            child: Text(
              movie.plot,
              style: const TextStyle(
                color: Color(0xFF737599),
              ),
            ),
          ),
          CastAndCrewUi10(
            cast: movie.cast,
          )
        ],
      ),
    );
  }
}

