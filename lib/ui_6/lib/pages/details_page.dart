import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:modul_4_homework_obidxon/ui_6/lib/constants.dart';
import 'package:modul_4_homework_obidxon/ui_6/lib/widgets/bottom_nav_bar.dart';
import 'package:modul_4_homework_obidxon/ui_6/lib/widgets/search_bar.dart';
import 'package:modul_4_homework_obidxon/ui_6/lib/widgets/seccion_card.dart';

class DetailsPageUi6 extends StatelessWidget {
  const DetailsPageUi6({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      bottomNavigationBar: const BottomNavBarUi6(),
      body: Stack(
        children: [
          Container(
            height: size.height * .45,
            decoration: const BoxDecoration(
              color: kBlueLightColorUi6,
              image: DecorationImage(
                image: AssetImage('assets/ui_6/images/meditation_bg.png'),
                fit: BoxFit.fitWidth,
              ),
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: size.height * 0.05,
                  ),
                  Text(
                    'Meditation',
                    style: Theme.of(context)
                        .textTheme
                        .displaySmall!
                        .copyWith(fontSize: 32, fontWeight: FontWeight.w900),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    '3-10 MIN Course',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    width: size.width * .6,
                    child: const Text(
                      'Live happier and healthier by lerning the fundementals of meditation',
                    ),
                  ),
                  SizedBox(
                    width: size.width * .5,
                    child: const SerachBar(),
                  ),
                  Wrap(
                    spacing: 20,
                    runSpacing: 20,
                    children: [
                      SeccionCard(
                        seccionNum: 1,
                        isDone: true,
                        press: () {},
                      ),
                      SeccionCard(
                        seccionNum: 2,
                        press: () {},
                      ),
                      SeccionCard(
                        seccionNum: 3,
                        press: () {},
                      ),
                      SeccionCard(
                        seccionNum: 4,
                        press: () {},
                      ),
                      SeccionCard(
                        seccionNum: 5,
                        press: () {},
                      ),
                      SeccionCard(
                        seccionNum: 6,
                        press: () {},
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Meditation',
                    style: Theme.of(context)
                        .textTheme
                        .titleLarge!
                        .copyWith(fontWeight: FontWeight.bold),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 20),
                    padding: const EdgeInsets.all(15),
                    height: 90,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(13),
                      boxShadow: const [
                        BoxShadow(
                          offset: Offset(0, 15),
                          spreadRadius: -13,
                          blurRadius: 23,
                          color: kShadowColorUi6,
                        ),
                      ],
                    ),
                    child: Row(
                      children: [
                        SvgPicture.asset(
                            'assets/ui_6/icons/Meditation_women_small.svg'),
                        const SizedBox(
                          width: 20,
                        ),
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Basic 2',
                                style: Theme.of(context).textTheme.titleSmall,
                              ),
                              const Text('Start your deepen you practice'),
                            ],
                          ),
                        ),
                        Padding(padding: const EdgeInsets.all(10),child: SvgPicture.asset('assets/ui_6/icons/Lock.svg'),),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

