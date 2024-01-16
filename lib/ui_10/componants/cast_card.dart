import 'package:flutter/material.dart';
import 'package:modul_4_homework_obidxon/ui_10/constants.dart';

class CastCardUi10 extends StatelessWidget {
  final Map cast;
  const CastCardUi10({super.key, required this.cast});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: kDefaultPaddingUi10),
      width: 80,
      child: Column(
        children: [
          Container(
            height: 80,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(cast['image']),
              ),
            ),
          ),
          const SizedBox(height: kDefaultPaddingUi10 / 2),
          Text(
            cast['originalName'],
            maxLines: 2,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          const SizedBox(height: kDefaultPaddingUi10 / 4),
          Text(
            cast['movieName'],
            maxLines: 1,
            textAlign: TextAlign.center,
            style: const TextStyle(color: kTextLightColorUi10),
          ),
        ],
      ),
    );
  }
}
