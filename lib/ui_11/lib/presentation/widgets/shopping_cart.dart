import 'package:flutter/material.dart';

class ShoppingCart extends StatelessWidget {
  const ShoppingCart({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: 80,
      padding: const EdgeInsets.all(12),
      decoration: const BoxDecoration(
        color: Colors.white,
        image: DecorationImage(
          image: AssetImage('assets/ui_11/images/shopping-cart_light.png'),
        ),
      ),
      child: Stack(
        children: [
          Positioned(
            right: 5,
            top: 10,
            child: Container(
              height: 20,
              width: 20,
              decoration: const BoxDecoration(
                color: Color.fromRGBO(203, 242, 101, 1),
                shape: BoxShape.circle,
              ),
              child: const Text(
                textAlign: TextAlign.center,
                '8',
                style: TextStyle(
                  color: Color.fromRGBO(114, 3, 255, 1),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
