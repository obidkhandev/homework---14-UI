// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:modul_4_homework_obidxon/ui_12/compatations.dart';
import 'package:modul_4_homework_obidxon/ui_12/screens/product_description.dart';
import 'package:modul_4_homework_obidxon/ui_12/widget/bottom_nav_bar.dart';
import 'package:modul_4_homework_obidxon/ui_12/widget/category_card.dart';
import 'package:modul_4_homework_obidxon/ui_12/widget/my_header.dart';
import 'package:modul_4_homework_obidxon/ui_12/widget/open_card.dart';
import 'package:modul_4_homework_obidxon/ui_12/widget/person_circle.dart';
import 'package:modul_4_homework_obidxon/ui_12/widget/wishlist.dart';
import 'package:modul_4_homework_obidxon/ui_3/constants.dart';

class HomePageUi12 extends StatelessWidget {
  const HomePageUi12({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavBar(),
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.menu,
            weight: 24,
            color: kBackColor,
          ),
        ),
        title: Text(
          'bagzz',
        ),
        titleTextStyle: kPlayfairDisplay,
        actions: [
          PersonCircle(),
        ],
      ),
      body: Stack(
        children: [
          ListView(
            // padding: EdgeInsets.only(left: 12, right: 12),
            children: [
              SizedBox(
                height: 200,
                width: double.maxFinite,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  padding: const EdgeInsets.only(top: 20),
                  children: const [
                     OwnHeader(image: 'assets/ui_12/images/Group 58 (1).png'),
                    // SizedBox(width: 12,),
                    OwnHeader(image: 'assets/ui_12/images/Group 58 (2).png')
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              GridView.builder(
                padding: const EdgeInsets.only(left: 12, right: 12),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 15,
                  crossAxisSpacing: 15,
                ),
                shrinkWrap: true,
                itemCount: 4,
                physics: BouncingScrollPhysics(),
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return ProductDescriptionPage();
                          },
                        ),
                      );
                    },
                    child: Container(
                      padding: EdgeInsets.all(5),
                      height: 230,
                      width: 170,
                      decoration: const BoxDecoration(
                        color: Color.fromRGBO(241, 241, 241, 1),
                      ),
                      child: Column(
                        children: [
                          Align(
                            alignment: Alignment.topRight,
                            child: Icon(
                              Icons.favorite_border,
                              size: 16,
                            ),
                          ),
                          Image.asset(
                            'assets/ui_12/images/image${index + 1}.png',
                            height: 100,
                            width: 100,
                          ),
                          if (index == 0)
                            Text(
                              'Artsy',
                              style: kPlayfairDisplay.copyWith(fontSize: 18),
                            ),
                          if (index == 1)
                            Text(
                              'Berkely',
                              style: kPlayfairDisplay.copyWith(fontSize: 18),
                            ),
                          if (index == 2)
                            Text(
                              'Capucinus',
                              style: kPlayfairDisplay.copyWith(fontSize: 18),
                            ),
                          if (index == 3)
                            Text(
                              'Monogram',
                              style: kPlayfairDisplay.copyWith(fontSize: 18),
                            ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Buy Now'.toUpperCase(),
                            style: kWorkSansBlack,
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Container(height: 2, width: 88, color: kBackColor),
                        ],
                      ),
                    ),
                  );
                },
              ),
              SizedBox(
                height: 20,
              ),
              Center(
                child: Container(
                  alignment: Alignment.center,
                  height: 35,
                  width: 184,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: kBackColor),
                  ),
                  child: Text(
                    'Check all latest'.toUpperCase(),
                    textAlign: TextAlign.center,
                    style: kWorkSansBlack.copyWith(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Text(
                'Shop by categories',
                style: kPlayfairDisplay.copyWith(fontSize: 24),
                // textAlign: TextAlign.left,
              ),
              SizedBox(
                height: 20,
              ),
              CategoryCard(),
              SizedBox(
                height: 30,
              ),
              Center(
                child: Container(
                  alignment: Alignment.center,
                  height: 35,
                  width: 240,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: kBackColor),
                  ),
                  child: Text(
                    'Browse all categories'.toUpperCase(),
                    textAlign: TextAlign.center,
                    style: kWorkSansBlack.copyWith(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 50,
              ),
            ],
          ),
          // Positioned(
          //   left: 12,
          //   right: 12,
          //   bottom: 0,
          //   child: Wishlist(),
          // ),
        ],
      ),
    );
  }
}
