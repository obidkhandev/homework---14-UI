import 'package:flutter/material.dart';
import 'package:modul_4_homework_obidxon/ui_9/constants.dart';
import 'package:modul_4_homework_obidxon/ui_9/widget/order_button.dart';
import 'package:modul_4_homework_obidxon/ui_9/widget/title_price_rating.dart';

class ItemInfoUi9 extends StatelessWidget {
  const ItemInfoUi9({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.all(20),
      width: double.infinity,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      child: Column(
        children: [
          shopName("MacDona's"),
          const TitlePriceRatingUi9(
            price: 15,
            productName: 'Cheese Burger',
            numOfReviews: 24,
          ),
          Text(
            'By the late 19th century, the vast grasslands of the Great Plains had been opened up for cattle ranching. This made it possible for many Americans to consume beef almost daily. The hamburger remains as one of the cheapest forms of beef in America.',
            style: TextStyle(height: 2),
          ),
          SizedBox(
            height: size.height * 0.1,
          ),
          OrderButton(size: size,press: (){},),
        ],
      ),
    );
  }

  Row shopName(String name) {
    return Row(
      children: [
        const Icon(
          Icons.location_on,
          color: kSecondaryColorUi9,
        ),
        const SizedBox(
          width: 10,
        ),
        Text(name)
      ],
    );
  }
}

