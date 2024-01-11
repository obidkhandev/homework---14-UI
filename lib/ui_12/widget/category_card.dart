import 'package:flutter/material.dart';
import 'package:modul_4_homework_obidxon/ui_12/widget/category_bag_card.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GridView(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, mainAxisSpacing: 20, crossAxisSpacing: 20),
      shrinkWrap: true,
      physics: BouncingScrollPhysics(),
      // physics: AlwaysScrollableScrollPhysics(),
      children: const [
        CategoryBagCard(
          image: 'assets/ui_12/images/Rectangle 125_1.png',
          text: 'Handle bags',
        ),
        CategoryBagCard(
          image: 'assets/ui_12/images/Rectangle 125_2.png',
          text: 'Handle bags',
        ),
        CategoryBagCard(
          image: 'assets/ui_12/images/Rectangle 125_4.png',
          text: 'Handle bags',
        ),
        CategoryBagCard(
          image: 'assets/ui_12/images/Rectangle 125_3.png',
          text: 'Handle bags',
        ),
      ],
    );
  }
}
