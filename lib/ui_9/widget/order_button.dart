import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:modul_4_homework_obidxon/ui_9/constants.dart';

class OrderButton extends StatelessWidget {
  const OrderButton({
    super.key,
    required this.size,
    required this.press
  });

  final Size size;
  final Function() press;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width * 0.8,
      decoration: BoxDecoration(
          color: kPrimaryColorUi9, borderRadius: BorderRadius.circular(10)),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: press,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset('assets/ui_9/icons/bag.svg'),
                const SizedBox(
                  width: 10,
                ),
                const Text(
                  'Order Now',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
