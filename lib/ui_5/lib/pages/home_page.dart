import 'package:flutter/material.dart';
import 'package:modul_4_homework_obidxon/ui_5/lib/consttants.dart';
import 'package:modul_4_homework_obidxon/ui_5/lib/pages/details_screen.dart';
import 'package:modul_4_homework_obidxon/ui_5/lib/widget/book_rating.dart';
import 'package:modul_4_homework_obidxon/ui_5/lib/widget/reading_list_card.dart';
import 'package:modul_4_homework_obidxon/ui_5/lib/widget/rounded_side_button.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/main_page_bg.png'),
                    alignment: Alignment.topCenter,
                    fit: BoxFit.fitWidth),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: size.height * .08,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: RichText(
                      text: TextSpan(
                        style:
                            Theme.of(context).textTheme.displaySmall!.copyWith(
                                  fontSize: 30,
                                ),
                        children: const [
                          TextSpan(
                            text: 'What are you\nreading ',
                          ),
                          TextSpan(
                            text: 'today?',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        ReadingListCard(
                          title: 'Crushing & Influence',
                          auth: 'Gary Venchuk',
                          image: 'assets/book-1.png',
                          pressDetail: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return const DetailsPage();
                                },
                              ),
                            );
                          },
                        ),
                        const ReadingListCard(
                          title: 'Top 10 Business Hacks',
                          auth: 'Herman Venchuk',
                          image: 'assets/book-2.png',
                          rating: 4.8,
                        ),
                        const SizedBox(
                          width: 30,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        RichText(
                          text: TextSpan(
                            style: Theme.of(context)
                                .textTheme
                                .displaySmall!
                                .copyWith(fontSize: 32),
                            children: const [
                              TextSpan(text: 'Best of the '),
                              TextSpan(
                                text: 'day',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                        bestOfTheDay(size, context),
                        RichText(
                          text: TextSpan(
                            style: Theme.of(context)
                                .textTheme
                                .displaySmall!
                                .copyWith(fontSize: 30),
                            children: const [
                              TextSpan(
                                text: 'Continue ',
                              ),
                              TextSpan(
                                text: 'reading...',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Container(
                          height: 80,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(38),
                            boxShadow: [
                              BoxShadow(
                                offset: const Offset(0, 10),
                                blurRadius: 33,
                                color: kShadowColorUi5,
                              ),
                            ],
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(38),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 20, right: 30),
                                    child: Row(
                                      children: [
                                        const Expanded(
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Crushing & Influence',
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                              Text(
                                                'Gary Venchuk',
                                                style: TextStyle(
                                                  color: kLightBlackColorUi5,
                                                ),
                                              ),
                                              Align(
                                                alignment:
                                                    Alignment.bottomRight,
                                                child: Text(
                                                  'Chapter 7 of 10',
                                                  style: TextStyle(
                                                    color: kLightBlackColorUi5,
                                                    fontSize: 10,
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                height: 5,
                                              ),
                                            ],
                                          ),
                                        ),
                                        Image.asset(
                                          'assets/book-1.png',
                                          width: 55,
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 7,
                                  width: size.width * .6,
                                  decoration: BoxDecoration(
                                    color: kProgressIndicatorUi5,
                                    borderRadius: BorderRadius.circular(7),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 40,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container bestOfTheDay(Size size, BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20),
      width: double.infinity,
      height: 200,
      child: Stack(
        children: [
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              padding: EdgeInsets.only(
                left: 20,
                top: 20,
                right: size.width * .35,
              ),
              height: 185,
              decoration: BoxDecoration(
                color: const Color(0xFFEAEAEA).withOpacity(.5),
                borderRadius: BorderRadius.circular(30),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'New York Time Best For 11th March 2020',
                    style: TextStyle(
                      fontSize: 9,
                      color: kLightBlackColorUi5,
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    'How to Win\nFriends & Influence',
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  const Text(
                    'Gary Venchuk',
                    style: TextStyle(
                      color: kLightBlackColorUi5,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Row(
                    children: [
                      BookRating(score: 4.9),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: Text(
                          'When the earth was flat and everyone wanted to win game of the best and people...',
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: 10,
                            color: kLightBlackColorUi5,
                          ),
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
            width: size.width * .37,
             child: Image.asset(
              'assets/book-3.png',
            ),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: SizedBox(
              height: 40,
              width: size.width * .3,
              child: TwoSideRoundedButton(
                text: 'Read',
                radious: 24,
                press: () {},
              ),
            ),
          ),
        ],
      ),
    );
  }
}
