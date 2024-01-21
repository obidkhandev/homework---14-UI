import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:modul_4_homework_obidxon/ui_6/lib/pages/details_page.dart';
import 'package:modul_4_homework_obidxon/ui_6/lib/widgets/bottom_nav_bar.dart';
import 'package:modul_4_homework_obidxon/ui_6/lib/widgets/category_card.dart';
import 'package:modul_4_homework_obidxon/ui_6/lib/widgets/search_bar.dart';

class HomePageUi6 extends StatelessWidget {
  const HomePageUi6({super.key});

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
              color: Color(0xFFF5CEBB),
              image: DecorationImage(
                alignment: Alignment.centerLeft,
                image: AssetImage('assets/ui_6/images/undraw_pilates_gpdb.png'),
              ),
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      height: 50,
                      width: 50,
                      decoration: const BoxDecoration(
                        color: Color(0xfff2BEA1),
                        shape: BoxShape.circle,
                      ),
                      child: SvgPicture.asset(
                        'assets/ui_6/icons/menu.svg',
                      ),
                    ),
                  ),
                  Text(
                    'Good Morning \nObidkhan',
                    style: Theme.of(context).textTheme.displaySmall!.copyWith(
                          fontWeight: FontWeight.w900,
                          fontSize: 32,
                        ),
                  ),
                  const SerachBar(),
                  Expanded(
                    child: GridView.count(
                      crossAxisCount: 2,
                      childAspectRatio: .9,
                      mainAxisSpacing: 20,
                      crossAxisSpacing: 20,
                      children: [
                        CategoryCardUi6(
                          image: 'assets/ui_6/icons/Hamburger.svg',
                          text: 'Diet Recommendation',
                          press: () {},
                        ),
                        CategoryCardUi6(
                          image: 'assets/ui_6/icons/Meditation.svg',
                          text: 'Meditation',
                          press: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return const DetailsPageUi6();
                                },
                              ),
                            );
                          },
                        ),
                        CategoryCardUi6(
                          image: 'assets/ui_6/icons/Excrecises.svg',
                          text: 'Daily Exercises',
                          press: () {},
                        ),
                        CategoryCardUi6(
                          image: 'assets/ui_6/icons/yoga.svg',
                          text: 'Yoga',
                          press: () {},
                        ),
                      ],
                    ),
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

