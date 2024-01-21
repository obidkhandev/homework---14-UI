import 'package:flutter/material.dart';
import 'package:modul_4_homework_obidxon/ui_12/screens/home_page_body.dart';
import 'package:modul_4_homework_obidxon/ui_12/widget/wishlist.dart';

class HomeWishlist extends StatelessWidget {
  const HomeWishlist({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Stack(
        children: [
          HomePageBody(),
          Positioned(
            left: 12,
            right: 12,
            bottom: 0,
            child: Wishlist(),
          ),
        ],
      ),
    );
  }
}