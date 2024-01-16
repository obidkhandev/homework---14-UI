import 'package:flutter/material.dart';
import 'package:modul_4_homework_obidxon/ui_9/widget/category_list.dart';
import 'package:modul_4_homework_obidxon/ui_9/widget/discount_card.dart';
import 'package:modul_4_homework_obidxon/ui_9/widget/item_list.dart';
import 'package:modul_4_homework_obidxon/ui_9/widget/search_box.dart';

class BodyUi9 extends StatelessWidget {
  const BodyUi9({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SearchBoxUi9(
            onChanged: (value) {},
          ),
          CategoryListUi9(),
          ItemListUi9(),
          DiscountCard(),
        ],
      ),
    );
  }
}

