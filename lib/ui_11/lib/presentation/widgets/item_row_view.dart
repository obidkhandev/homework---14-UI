import 'package:flutter/material.dart';
import 'package:modul_4_homework_obidxon/ui_11/lib/components.dart';
import 'package:modul_4_homework_obidxon/ui_11/lib/presentation/screens/item_screen.dart';
import 'package:modul_4_homework_obidxon/ui_11/lib/presentation/widgets/item_view.dart';

class ItemRowView extends StatelessWidget {
  final String image;
  final String title;
  final double price;
  final String countable;
  final String money;
  const ItemRowView({
    super.key,
    required this.image,
    required this.title,
    required this.price,
    required this.countable,
    this.money = '€',
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          decoration: BoxDecoration(
            color: backroundColor,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Row(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return const ItemScreen();
                      },
                    ),
                  );
                },
                child: Image.asset(
                  image,
                  fit: BoxFit.fill,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 20, left: 20, top: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                        color: textPrimaryColor,
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(
                      height: 5
                    ),
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: '$price ',
                            style: const TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.w700,
                              color: textPrimaryColor,
                            ),
                          ),
                          TextSpan(
                            text: '$money / $countable',
                            style: const TextStyle(
                              color: textScondaryColor,
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 10
                    ),
                    const Row(
                      children: [
                        ItemView(
                          backroundColor: Colors.white,
                          colorIcon: borderColor,
                          icon: Icons.favorite_border,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        ItemView(
                          backroundColor: Colors.green,
                          colorIcon: Colors.white,
                          icon: Icons.shopping_cart,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
