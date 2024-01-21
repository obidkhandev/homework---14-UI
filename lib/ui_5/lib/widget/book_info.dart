import 'package:flutter/material.dart';
import 'package:modul_4_homework_obidxon/ui_5/lib/widget/book_rating.dart';
import 'package:modul_4_homework_obidxon/ui_5/lib/widget/reading_button.dart';

class BookInfo extends StatelessWidget {
  const BookInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Crushing &',
                style: Theme.of(context)
                    .textTheme
                    .displaySmall!
                    .copyWith(fontSize: 30),
              ),
              Text(
                'Influence',
                style: Theme.of(context).textTheme.displaySmall!.copyWith(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
              ),
              const SizedBox(
                height: 5,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Expanded(
                    child: Column(
                      children: [
                        Text(
                          'When the earth was flat and everyone wanted to of the best and people and winning with an A game with all the things you have.',
                          maxLines: 5,
                          style: TextStyle(
                            fontSize: 10,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        ReadingButton(
                          text: 'Read',
                          verticalPadding: 10,
                        ),
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.favorite_border),
                      ),
                      const BookRating(score: 4.9),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
        Image.asset(
          'assets/book-1.png',
          height: 180,
        ),
      ],
    );
  }
}
