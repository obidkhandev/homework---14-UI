import 'package:flutter/material.dart';
import 'package:modul_4_homework_obidxon/ui_11/lib/components.dart';
import 'package:modul_4_homework_obidxon/ui_11/lib/presentation/widgets/bottom_nav_bar.dart';
import 'package:modul_4_homework_obidxon/ui_11/lib/presentation/widgets/chips_card.dart';
import 'package:modul_4_homework_obidxon/ui_11/lib/presentation/widgets/item_row_view.dart';
import 'package:modul_4_homework_obidxon/ui_11/lib/presentation/widgets/search_widget.dart';

class VegeTablesScreen extends StatelessWidget {
  const VegeTablesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const BottomNavBar(
        isActivate: true,
      ),
      backgroundColor: backroundColor,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(
                      top: 60,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.arrow_back_ios,
                          color: textPrimaryColor,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          'Vegetables',
                          style: sfProBold,
                        ),
                      ],
                    ),
                  ),
                  Image.asset(
                    'assets/ui_11/images/vegetables.png',
                    alignment: Alignment.topRight,
                  ),
                ],
              ),
              const Stack(
                children: [
                  Padding(
                    padding:  EdgeInsets.only(right: 20),
                    child: SearchWid(),
                  ),
                ],
              ),
              const SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ChipsCard(
                      isActivate: true,
                      title: 'Cabbage and lettuce',
                      count: 14,
                    ),
                    ChipsCard(
                      title: 'Cucumbers and tomato',
                      count: 14,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 15
              ),
              const SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ChipsCard(
                      title: 'Oinons and garlic',
                      count: 8,
                    ),
                    ChipsCard(
                      title: 'Peppers',
                      count: 7,
                    ),
                    ChipsCard(
                      title: 'Potatoes and carrots',
                      count: 4,
                    ),
                  ],
                ),
              ),
              const Padding(
                padding:  EdgeInsets.only(right: 20, top: 30),
                child: Column(
                  children: [
                    ItemRowView(
                      title: 'Boston Lettuce',
                      image: 'assets/ui_11/images/vg1.png',
                      price: 1.10,
                      countable: 'piece',
                    ),
                    ItemRowView(
                      title: 'Purple Cauliflower',
                      image: 'assets/ui_11/images/vg2.png',
                      price: 1.85,
                      countable: 'kg',
                    ),
                     ItemRowView(
                      title: 'Savoy Cabbage',
                      image: 'assets/ui_11/images/vg3.png',
                      price: 1.45,
                      countable: 'kg',
                    ),
                     
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}