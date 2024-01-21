import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:modul_4_homework_obidxon/ui_3/constants.dart';
import 'package:modul_4_homework_obidxon/ui_3/screens/detail_page.dart';
import 'package:modul_4_homework_obidxon/ui_3/widgets/category_title.dart';
import 'package:modul_4_homework_obidxon/ui_3/widgets/food_card.dart';

// ignore: camel_case_types
class HomePageUi_3 extends StatelessWidget {
  const HomePageUi_3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Container(
        padding: const EdgeInsets.all(10),
        height: 80,
        width: 80,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: kPirimaryColor.withOpacity(.26),
        ),
        child: Container(
          padding: const EdgeInsets.all(20),
          decoration: const BoxDecoration(
              shape: BoxShape.circle, color: kPirimaryColor),
          child: SvgPicture.asset('assets/ui_3/icons/plus.svg'),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 40, right: 15),
            child: Align(
                alignment: Alignment.topRight,
                child: SvgPicture.asset(
                  'assets/ui_3/icons/menu.svg',
                  height: 11,
                )),
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: Text(
              'Simple way to find \nTasty food',
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ),
          const SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                CategoryTitle(
                  title: 'All',
                  activate: true,
                ),
                CategoryTitle(
                  title: 'Italian',
                ),
                CategoryTitle(
                  title: 'FastFood',
                ),
                CategoryTitle(
                  title: 'Chinese',
                ),
                CategoryTitle(
                  title: 'JungleFood',
                ),
                CategoryTitle(
                  title: 'Sweet',
                ),
              ],
            ),
          ),
          Container(
            alignment: Alignment.centerLeft,
            margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            height: 50,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              border: Border.all(color: kBorderColor),
            ),
            child: SvgPicture.asset('assets/ui_3/icons/search.svg'),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                FoodCard(
                  press: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return const DetailPage();
                        },
                      ),
                    );
                  },
                  price: 20,
                  title: 'Vegan salad bowl',
                  ingredent: 'red tomato',
                  description:
                      'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classion Latin',
                  calories: 420,
                  image: 'assets/ui_3/images/image_1_big.png',
                ),
                FoodCard(
                  press: () {},
                  price: 20,
                  title: 'Vegan salad bowl',
                  ingredent: 'red tomato',
                  description:
                      'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classion Latin',
                  calories: 420,
                  image: 'assets/ui_3/images/image_2.png',
                ),
                const SizedBox(
                  width: 40,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
