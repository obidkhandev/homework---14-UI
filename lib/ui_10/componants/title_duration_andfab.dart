import 'package:flutter/material.dart';
import 'package:modul_4_homework_obidxon/ui_10/constants.dart';
import 'package:modul_4_homework_obidxon/ui_10/model/movie.dart';

class TitleDurationAndFabBtnUi10 extends StatelessWidget {
  const TitleDurationAndFabBtnUi10({
    super.key,
    required this.movie,
  });

  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(kDefaultPaddingUi10),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  movie.title,
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                Row(
                  children: [
                    Text(
                      '${movie.year}',
                      style: const TextStyle(color: kTextLightColorUi10),
                    ),
                    const SizedBox(width: kDefaultPaddingUi10,),
                    const Text(
                      'PG - 13',
                      style: TextStyle(color: kTextLightColorUi10),
                    ),
                    const SizedBox(width: kDefaultPaddingUi10,),
                    const Text(
                      '2h 32min',
                      style: TextStyle(color: kTextLightColorUi10),
                    ),
                  ],
                )
              ],
            ),
          ),
          SizedBox(
            height: 64,
            width: 64,
            child: FloatingActionButton(
              onPressed: () {},
              backgroundColor: kSecondaryColorUi10,
              child: const Icon(
                Icons.add,
                size: 28,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
