import 'package:flutter/material.dart';
import 'package:modul_4_homework_obidxon/ui_10/constants.dart';

class CategoryListUi10 extends StatefulWidget {
  const CategoryListUi10({super.key});

  @override
  State<CategoryListUi10> createState() => _CategoryListUi10State();
}

class _CategoryListUi10State extends State<CategoryListUi10> {
  int selectedCategory = 0;
  List<String> categories = ["In Theater", "Box Offise", "Coming Soon"];
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: kDefaultPaddingUi10 / 2),
      height: 60,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) => buildCategory(index, context),
      ),
    );
  }

  Padding buildCategory(int index, BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddingUi10),
      child: GestureDetector(
        onTap: () {
          setState(() {
            selectedCategory = index;
          });
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              categories[index],
              style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                    fontWeight: FontWeight.w600,
                    color: index == selectedCategory
                        ? kTextColorUi10
                        : Colors.black.withOpacity(.4),
                  ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: kDefaultPaddingUi10 / 2),
              height: 6,
              width: 40,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: index == selectedCategory
                      ? kSecondaryColorUi10
                      : Colors.transparent),
            )
          ],
        ),
      ),
    );
  }
}
