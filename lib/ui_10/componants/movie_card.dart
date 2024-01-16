import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:modul_4_homework_obidxon/ui_10/constants.dart';
import 'package:modul_4_homework_obidxon/ui_10/model/movie.dart';
import 'package:modul_4_homework_obidxon/ui_10/screen/detail_screen.dart';

class MovieCardUi10 extends StatelessWidget {
  final Movie movie;
  const MovieCardUi10({super.key, required this.movie});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddingUi10),
      child: OpenContainer(
        closedElevation: 0,
        openElevation: 0,
        closedBuilder: (context, action) => buildMovieCard(context),
        openBuilder: (context, action) => DetailScreenUi10(movie: movie),
      ),
    );
  }

  Column buildMovieCard(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              boxShadow: const [
                kDefaultShadow,
              ],
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(movie.poster),
              ),
            ),
          ),
        ),
        Padding(
          padding:
              const EdgeInsets.symmetric(vertical: kDefaultPaddingUi10 / 2),
          child: Text(
            movie.title,
            style: Theme.of(context)
                .textTheme
                .headlineSmall!
                .copyWith(fontWeight: FontWeight.w600),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              'assets/ui_10/icons/star_fill.svg',
              height: 20,
            ),
            const SizedBox(
              height: kDefaultPaddingUi10 / 2,
            ),
            Text(
              '${movie.rating}',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ],
        )
      ],
    );
  }
}
