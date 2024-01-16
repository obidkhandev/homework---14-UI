import 'package:flutter/material.dart';
import 'package:modul_4_homework_obidxon/ui_10/componants/cast_card.dart';
import 'package:modul_4_homework_obidxon/ui_10/constants.dart';

class CastAndCrewUi10 extends StatelessWidget {
  final List cast;
  const CastAndCrewUi10({super.key, required this.cast});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(kDefaultPaddingUi10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Cast & Crew',
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          const SizedBox(height: kDefaultPaddingUi10),
          SizedBox(
            height: 160,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: cast.length,
              itemBuilder: ((context, index) {
                return CastCardUi10(
                  cast: cast[index],
                );
              }),
            ),
          ),
        ],
      ),
    );
  }
}

