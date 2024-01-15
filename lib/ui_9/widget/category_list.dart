import 'package:flutter/material.dart';
import 'package:modul_4_homework_obidxon/ui_9/widget/category_item.dart';

class CategoryListUi9 extends StatelessWidget {
  const CategoryListUi9({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CategoryItemUi9(
            title: 'Combo Meal',
            isActivate: true,
          ),
          CategoryItemUi9(
            title: 'Chicken',
          ),
          CategoryItemUi9(
            title: 'Beverages',
          ),
          CategoryItemUi9(
            title: 'Snack & Sides',
          ),
        ],
      ),
    );
  }
}

