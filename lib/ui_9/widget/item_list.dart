import 'package:flutter/material.dart';
import 'package:modul_4_homework_obidxon/ui_9/screen/detail_screen.dart';
import 'package:modul_4_homework_obidxon/ui_9/widget/item_card.dart';

class ItemListUi9 extends StatelessWidget {
  const ItemListUi9({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          ItemCardUi9(
            svgSrc: 'assets/ui_9/icons/burger_beer.svg',
            title: 'Burger & Beer',
            shopName: "MacDonal's",
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const DetailScrenUi9();
                  },
                ),
              );
            },
          ),
          const ItemCardUi9(
            svgSrc: 'assets/ui_9/icons/chinese_noodles.svg',
            title: 'Burger & Beer',
            shopName: "Wendys",
          ),
          const ItemCardUi9(
            svgSrc: 'assets/ui_9/icons/burger_beer.svg',
            title: 'Burger & Beer',
            shopName: "MacDonal's",
          ),
        ],
      ),
    );
  }
}
