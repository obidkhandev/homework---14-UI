import 'package:flutter/material.dart';
import 'package:modul_4_homework_obidxon/ui_12/compatations.dart';
import 'package:modul_4_homework_obidxon/ui_12/widget/button_add_card.dart';
import 'package:modul_4_homework_obidxon/ui_12/widget/simple_line.dart';
import 'package:modul_4_homework_obidxon/ui_3/constants.dart';

class OpenCard extends StatefulWidget {
  const OpenCard({super.key});

  @override
  State<OpenCard> createState() => _OpenCardState();
}

int _countProduct = 0;

class _OpenCardState extends State<OpenCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 10, left: 22, bottom: 30),
      height: 512,
      width: 345,
      decoration: const BoxDecoration(
        color: Color.fromRGBO(255, 255, 255, 0.8),
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
          const SizedBox(
            height: 80,
          ),
          const BuyOpenCart(
            image: 'assets/ui_12/images/image1.png',
            tag: 'Wallet with Chinese',
            productName: 'Artsy',
            productStyle: 'Style #36252 0YK0G 1000',
            price: 564,
          ),
          const SimpleLine(
            height: 1,
            width: 320,
            verticalMarjin: 30,
          ),
          const BuyOpenCart(
            image: 'assets/ui_12/images/image4.png',
            tag: 'Wallet with Chinese',
            productName: 'Monogram',
            productStyle: 'Style #9242 0YK0G 211',
            price: 1638,
          ),
          const Spacer(),
          const ButtonAddCard(title: 'Proceed to buy', width: 187, height: 43)
        ],
      ),
    );
  }
}

class BuyOpenCart extends StatelessWidget {
  final String image;
  final String productName;
  final String productStyle;
  final int price;
  final String tag;
  const BuyOpenCart({
    super.key,
    required this.image,
    required this.productName,
    required this.productStyle,
    required this.price,
    required this.tag,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          children: [
            Image.asset(
              image,
              width: 81,
              height: 81,
            ),
            Row(
              children: [
                Container(
                  alignment: Alignment.center,
                  height: 25,
                  width: 29,
                  color: kBackColor,
                  child: Text(
                    '-',
                    style: kWorkSansBlack.copyWith(
                        fontWeight: FontWeight.w700,
                        fontSize: 16,
                        color: Colors.white),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    // setState(() {
                    //   if (_countProduct > 0) {
                    //     _countProduct -= 1;
                    //   }
                    // });
                    _countProduct -= 1;
                  },
                  child: Container(
                    alignment: Alignment.center,
                    height: 25,
                    width: 29,
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      border: Border.all(
                        color: kBackColor,
                      ),
                    ),
                    child: Text('$_countProduct'),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    // setState(() {
                    //   if (_countProduct < 20) {
                    //     _countProduct += 1;
                    //   }
                    // });
                    _countProduct += 1;
                  },
                  child: Container(
                    alignment: Alignment.center,
                    height: 25,
                    width: 29,
                    color: kBackColor,
                    child: Text(
                      '+',
                      style: kWorkSansBlack.copyWith(
                          fontWeight: FontWeight.w700,
                          fontSize: 16,
                          color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
        SizedBox(
          width: 10,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              productName,
              style: kPlayfairDisplay.copyWith(fontSize: 17),
            ),
            SizedBox(
              height: 5,
            ),
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: '$tag\n',
                    style: kWorkSansBlack.copyWith(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  TextSpan(
                    text: '$productStyle\n',
                    style: kWorkSansBlack.copyWith(
                      color: Color.fromRGBO(132, 132, 132, 1),
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              '\$$price',
              style: kWorkSansBlack.copyWith(
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
