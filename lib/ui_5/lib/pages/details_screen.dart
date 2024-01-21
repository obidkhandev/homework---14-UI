import 'package:flutter/material.dart';
import 'package:modul_4_homework_obidxon/ui_5/lib/consttants.dart';
import 'package:modul_4_homework_obidxon/ui_5/lib/widget/book_info.dart';
import 'package:modul_4_homework_obidxon/ui_5/lib/widget/book_rating.dart';
import 'package:modul_4_homework_obidxon/ui_5/lib/widget/chapter_card.dart';
import 'package:modul_4_homework_obidxon/ui_5/lib/widget/reading_button.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              alignment: Alignment.topCenter,
              children: [
                Container(
                  height: size.height * .4,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/bg.png'),
                      fit: BoxFit.fitWidth,
                    ),
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(50),
                      bottomLeft: Radius.circular(50),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                    ),
                    child: Column(
                      children: [
                        SizedBox(
                          height: size.height * .08,
                        ),
                        const BookInfo(),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: size.height * .4 - 30),
                  child: const Column(
                    children: [
                      ChapterCard(
                        name: 'Money',
                        tag: 'Life is about change',
                        number: 1,
                      ),
                      ChapterCard(
                        name: 'Power',
                        tag: 'Everything loves power',
                        number: 2,
                      ),
                      ChapterCard(
                        name: 'Influence',
                        tag: 'Influence easily like never before',
                        number: 3,
                      ),
                      ChapterCard(
                        name: 'Win',
                        tag: 'Winning is what matters',
                        number: 4,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RichText(
                    text: TextSpan(
                      style: Theme.of(context)
                          .textTheme
                          .displaySmall!
                          .copyWith(fontSize: 30),
                      children: const [
                        TextSpan(text: 'You might also '),
                        TextSpan(
                          text: 'like...',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Stack(
                    children: [
                      const SizedBox(
                        height: 180,
                        width: double.infinity,
                      ),
                      Positioned(
                        bottom: 0,
                        left: 0,
                        right: 0,
                        child: Container(
                          padding: const EdgeInsets.only(
                            left: 20,
                            top: 20,
                            right: 150,
                          ),
                          height: 170,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: const Color(0xFFFFF8F9),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              RichText(
                                text: const TextSpan(
                                  style: TextStyle(color: kBlackColorUi5),
                                  children: [
                                    TextSpan(
                                      text: 'How to Win\nFriends & Influence\n',
                                      style: TextStyle(
                                        fontSize: 20,
                                      ),
                                    ),
                                    TextSpan(
                                      text: 'Gary Venchuk',
                                      style: TextStyle(color: kLightBlackColorUi5),
                                    ),
                                  ],
                                ),
                              ),
                              const Row(
                                children: [
                                  BookRating(score: 4.9),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Expanded(
                                    child: ReadingButton(
                                      text: 'Read',
                                      verticalPadding: 10,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        right: 0,
                        top: 0,
                        width: 150,
                        child: Image.asset("assets/book-3.png"),
                      ),
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 40,
            ),
          ],
        ),
      ),
    );
  }
}
