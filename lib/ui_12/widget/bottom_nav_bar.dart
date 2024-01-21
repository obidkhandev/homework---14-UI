import 'package:flutter/material.dart';
import 'package:modul_4_homework_obidxon/ui_12/screens/home_screens.dart';
import 'package:modul_4_homework_obidxon/ui_12/screens/search_page.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 12, right: 12),
      height: 65,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(69),
        boxShadow: const [
          BoxShadow(
            offset: Offset(0, 14),
            blurRadius: 56,
            color: Color.fromRGBO(0, 0, 0, 0.14),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          GestureDetector(
            onTap: () {
            },
            child: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.home_filled),
            ),
          ),
          GestureDetector(
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const HomePageUi12();
                  },
                ),
              );
            },
            onDoubleTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const SearchPage();
                  },
                ),
              );
            },
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search,
              ),
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.favorite,
            ),
          ),
          Image.asset(
            'assets/ui_12/images/Group 16.png',
            width: 39,
            height: 30,
          ),
        ],
      ),
    );
  }
}
