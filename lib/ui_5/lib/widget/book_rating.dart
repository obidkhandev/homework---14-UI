import 'package:flutter/material.dart';
import 'package:modul_4_homework_obidxon/ui_5/lib/consttants.dart';

class BookRating extends StatelessWidget {
  final double score;
  const BookRating({
    super.key,
    required this.score,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 6,
        vertical: 8,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            offset: const Offset(3, 7),
            blurRadius: 20,
            color: kShadowColorUi5,
          ),
        ],
      ),
      child: Column(
        children: [
          const Icon(
            Icons.star,
            color: kIconColorUi5,
            size: 15,
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            '$score',
            style: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
