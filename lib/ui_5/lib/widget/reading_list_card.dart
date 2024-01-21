import 'package:flutter/material.dart';
import 'package:modul_4_homework_obidxon/ui_5/lib/consttants.dart';
import 'package:modul_4_homework_obidxon/ui_5/lib/widget/book_rating.dart';
import 'package:modul_4_homework_obidxon/ui_5/lib/widget/rounded_side_button.dart';

class ReadingListCard extends StatelessWidget {
  final String image;
  final String title;
  final String auth;
  final double rating;
  final Function()? pressDetail;
  final Function()? pressRead;
  const ReadingListCard({
    super.key,
    required this.image,
    required this.title,
    required this.auth,
    this.rating = 4.9,
    this.pressDetail,
    this.pressRead,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 20, bottom: 40),
      height: 245,
      width: 200,
      child: Stack(
        children: [
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              height: 210,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
                boxShadow: [
                  BoxShadow(
                    offset: const Offset(0, 10),
                    blurRadius: 33,
                    color: kShadowColorUi5,
                  ),
                ],
              ),
            ),
          ),
          Image.asset(
            image,
            width: 140,
          ),
          Positioned(
            top: 35,
            right: 10,
            child: Column(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.favorite_border,
                  ),
                ),
                BookRating(
                  score: rating,
                ),
              ],
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            top: 160,
            bottom: 0,
            child: SizedBox(
              height: 75,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: RichText(
                      text: TextSpan(
                        style: const TextStyle(
                          color: kBlackColorUi5,
                        ),
                        children: [
                          TextSpan(
                            text: '$title\n',
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextSpan(
                            text: auth,
                            style: const TextStyle(
                              color: kLightBlackColorUi5,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const Spacer(),
                  Row(
                    children: [
                      GestureDetector(
                        onTap: pressDetail,
                        child: Container(
                          width: 100,
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          alignment: Alignment.center,
                          child: const Text('Details'),
                        ),
                      ),
                      Expanded(
                        child: TwoSideRoundedButton(
                          press: pressRead,
                          text: 'Read',
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
