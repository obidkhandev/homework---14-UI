import 'package:flutter/material.dart';
import 'package:modul_4_homework_obidxon/ui_3/constants.dart';

class FoodCard extends StatelessWidget {
  final int price;
  final String title;
  final String ingredent;
  final int calories;
  final String description;
  final String image;
  final Function() press;
  const FoodCard({
    super.key,
    required this.press,
    required this.price,
    required this.title,
    required this.ingredent,
    required this.calories,
    required this.description,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        margin: const EdgeInsets.only(left: 15),
        height: 400,
        width: 270,
        child: Stack(
          children: [
            Positioned(
              right: 0,
              bottom: 0,
              child: Container(
                height: 380,
                width: 250,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(34),
                  color: kPirimaryColor.withOpacity(.06),
                ),
              ),
            ),
            Positioned(
              top: 5,
              left: 10,
              child: Container(
                height: 181,
                width: 181,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: kPirimaryColor.withOpacity(.15),
                ),
              ),
            ),
            Positioned(
              top: 0,
              left: -50,
              child: Container(
                height: 184,
                width: 276,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(image),
                  ),
                ),
              ),
            ),
            Positioned(
              right: 20,
              top: 80,
              child: Text(
                '\$$price',
                style: Theme.of(context)
                    .textTheme
                    .titleLarge!
                    .copyWith(color: kPirimaryColor),
              ),
            ),
            Positioned(
              top: 200,
              left: 40,
              child: SizedBox(
                width: 210,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    Text(
                      'With $ingredent',
                      style: TextStyle(
                        color: kTextColor.withOpacity(.4),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      description,
                      maxLines: 3,
                      style: TextStyle(color: kTextColor.withOpacity(.7)),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text('$calories Kcal')
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
