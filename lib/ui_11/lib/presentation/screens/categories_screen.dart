import 'package:flutter/material.dart';
import 'package:modul_4_homework_obidxon/ui_11/lib/components.dart';
import 'package:modul_4_homework_obidxon/ui_11/lib/presentation/model/category.dart';
import 'package:modul_4_homework_obidxon/ui_11/lib/presentation/screens/vegetables_screen.dart';
import 'package:modul_4_homework_obidxon/ui_11/lib/presentation/widgets/bottom_nav_bar.dart';
import 'package:modul_4_homework_obidxon/ui_11/lib/presentation/widgets/category_card.dart';
import 'package:modul_4_homework_obidxon/ui_11/lib/presentation/widgets/search_widget.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const BottomNavBar(isActivate: true,),
      body: Padding(
        padding: const EdgeInsets.only(top: 50, left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Icon(
              Icons.arrow_back_ios,
              color: textPrimaryColor,
            ),
            const SizedBox(
              height: 20
            ),
            const Text('Categories', style: sfProBold),
            const SearchWid(),
            Expanded(
              child: GridView.builder(
                itemCount: category.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 20,
                  crossAxisSpacing: 20,
                ),
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      index == 0
                          ? Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) {
                                return const VegeTablesScreen();
                              },),
                            )
                          : () {};
                    },
                    child: CategoryCard(
                      image: category[index].image,
                      count: category[index].count,
                      title: category[index].name,
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
