import 'package:flutter/material.dart';
import 'package:modul_4_homework_obidxon/ui_11/lib/components.dart';
import 'package:modul_4_homework_obidxon/ui_11/lib/presentation/screens/check_out_scrool_view.dart';
import 'package:modul_4_homework_obidxon/ui_11/lib/presentation/widgets/shopping_cart.dart';

class BottomNavBar extends StatelessWidget {
  final bool isActivate;
  final bool isActivate2;
  final bool isActivate3;
  final bool cartShop;
  const BottomNavBar({
    super.key,
    this.cartShop = false,
    this.isActivate = false,
    this.isActivate2 = false,
    this.isActivate3 = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const CheckOutScrollViewScreen();
                  },
                ),
              );
            },
            child: Icon(
              Icons.window,
              color: isActivate
                  ? const Color.fromRGBO(114, 3, 255, 1)
                  : textScondaryColor,
            ),
          ),
          cartShop
              ? const ShoppingCart()
              : GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return const CheckOutScrollViewScreen();
                        },
                      ),
                    );
                  },
                  child: Image.asset('assets/ui_11/images/shopping-cart.png')
                ),
          GestureDetector(
            onTap: () {},
            child: Icon(
              Icons.person,
              color: isActivate3
                  ? const Color.fromRGBO(114, 3, 255, 1)
                  : textScondaryColor,
            ),
          ),
        ],
      ),
    );
  }
}
