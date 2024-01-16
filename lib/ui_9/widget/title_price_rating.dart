import 'package:flutter/material.dart';
import 'package:modul_4_homework_obidxon/ui_9/constants.dart';

class TitlePriceRatingUi9 extends StatelessWidget {
  final String productName;
  final int price, numOfReviews;

  const TitlePriceRatingUi9({
    super.key,
    required this.productName,
    required this.price,
    required this.numOfReviews,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  productName,
                  style: Theme.of(context).textTheme.headlineLarge,
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    const Icon(Icons.star, color: kPrimaryColorUi9),
                    const Icon(Icons.star, color: kPrimaryColorUi9),
                    const Icon(Icons.star, color: kPrimaryColorUi9),
                    const Icon(Icons.star, color: kPrimaryColorUi9),
                    const Icon(Icons.star_border, color: kPrimaryColorUi9),
                    const SizedBox(width: 10),
                    Text('$numOfReviews reviews')
                  ],
                )
              ],
            ),
          ),
          priceTag(context, price)
        ],
      ),
    );
  }

  ClipPath priceTag(BuildContext context, int price) {
    return ClipPath(
      clipper: PriceClipperUi9(),
      child: Container(
        alignment: Alignment.topCenter,
        padding: const EdgeInsets.symmetric(vertical: 15),
        height: 66,
        width: 65,
        color: kPrimaryColorUi9,
        child: Text(
          '\$$price',
          style: Theme.of(context).textTheme.titleLarge!.copyWith(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
        ),
      ),
    );
  }
}

class PriceClipperUi9 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height - 20);
    path.lineTo(size.width / 2, size.height);
    path.lineTo(size.width, size.height - 20);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
