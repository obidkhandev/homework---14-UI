import 'package:flutter/material.dart';
import 'package:modul_4_homework_obidxon/ui_12/widget/button_add_card.dart';
import 'package:modul_4_homework_obidxon/ui_12/widget/buy_card.dart';
import 'package:modul_4_homework_obidxon/ui_12/widget/cart.dart';
import 'package:modul_4_homework_obidxon/ui_12/widget/simple_line.dart';
import 'package:modul_4_homework_obidxon/ui_3/constants.dart';

class Wishlist extends StatelessWidget {
  const Wishlist({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 10, left: 22, bottom: 30),
      height: 450,
      width: 345,
      decoration: BoxDecoration(
        color: Color.fromRGBO(255, 255, 255, 0.9),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Container(
              height: 2,
              width: 125,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(22),
                color: kBackColor,
              ),
            ),
          ),
          SizedBox(
            height: 40,
          ),
          const Cart(
            image: 'assets/ui_12/images/image4.png',
            productName: 'Berkely',
            productStyle: 'Style #36252 0YK0G 1000',
            tag: 'Wallet with chain',
          ),
          const Center(
            child: SimpleLine(
              height: 1,
              width: 290,
            ),
          ),
          const Cart(
            image: 'assets/ui_12/images/image3.png',
            productName: 'Berkely',
            productStyle: 'Style #36252 0YK0G 1000',
            tag: 'Wallet with chain',
          ),
          Spacer(),
          ButtonAddCard(
            title: 'Add all to cart',
            width: 190,
            height: 34,
            press: () {
              BuyCard();
            },
          ),
        ],
      ),
    );
  }
}

