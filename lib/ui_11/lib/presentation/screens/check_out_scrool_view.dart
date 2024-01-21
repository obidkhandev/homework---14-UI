import 'package:flutter/material.dart';
import 'package:modul_4_homework_obidxon/ui_11/lib/components.dart';
import 'package:modul_4_homework_obidxon/ui_11/lib/presentation/screens/paymet_screen.dart';
import 'package:modul_4_homework_obidxon/ui_11/lib/presentation/widgets/bottom_nav_bar.dart';
import 'package:modul_4_homework_obidxon/ui_11/lib/presentation/widgets/row_icon_and_text.dart';
import 'package:modul_4_homework_obidxon/ui_11/lib/presentation/widgets/row_text.dart';

class CheckOutScrollViewScreen extends StatelessWidget {
  const CheckOutScrollViewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: backroundColor,
      bottomNavigationBar: const BottomNavBar(
        cartShop: true,
        isActivate2: true,
      ),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.only(left: 20,top: 30),
            height: 96,
            decoration: const BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  offset: Offset(0, 10),
                  blurRadius: 18,
                  color: Color.fromRGBO(0, 0, 0, 0.08),
                ),
              ],
            ),
            child: Row(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: const Icon(
                    Icons.arrow_back_ios,
                    color: textPrimaryColor,
                  ),
                ),
                SizedBox(width: size.width / 3,),
                const Text(
                  'Checkout',
                  style: TextStyle(
                    color: textPrimaryColor,
                    fontSize: 17,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 20,
              right: 20,
              bottom: 40,
            ),
            child: Column(
              children: [
                RowText(
                  press: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return const PaymetScreen();
                        },
                      ),
                    );
                  },
                  title: 'Payment method',
                ),
                const SizedBox(
                  height: 20,
                ),
                const RowIconAndText(
                  text: '**** **** **** 4747',
                  iconColor: Color.fromRGBO(45, 12, 87, 1),
                  icon: Icons.credit_card_rounded,
                ),
                const SizedBox(height: 25),
                const RowText(title: 'Delivery address'),
                const SizedBox(height: 10),
                const RowIconAndText(
                  icon: Icons.home,
                  text:
                      'Alexandra Smith\nCesu 31 k-2 5.st, SIA Chili \nRiga\nLV–1012\nLatvia',
                ),
                const SizedBox(height: 25),
                const RowText(
                  title: 'Delivery options',
                ),
                const SizedBox(height: 10),
                const RowIconAndText(
                    icon: Icons.directions_walk_rounded,
                    text: 'I\'ll pick it up myself'),
                const SizedBox(height: 25),
                const RowIconAndText(
                    icon: Icons.directions_bike_rounded, text: 'By courier'),
                const SizedBox(
                  height: 25
                ),
                const RowIconAndText(
                  icon: Icons.airplanemode_on_rounded,
                  text: 'By Drone',
                  isActivate: true,
                ),
                const SizedBox(
                  height: 25,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Non-contact-delivery',
                      style: sfProBold.copyWith(
                        fontSize: 22,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        height: 30,
                        width: 70,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: const Color.fromRGBO(226, 203, 255, 1),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(
                                left: 10,
                              ),
                              child: Text(
                                'Yes',
                                style: TextStyle(
                                  color: Color.fromRGBO(108, 14, 228, 1),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(right: 2),
                              height: 26,
                              width: 26,
                              decoration: const BoxDecoration(
                                color: Colors.white,
                                shape: BoxShape.circle,
                                boxShadow: [
                                  BoxShadow(
                                    offset: Offset(
                                      0,
                                      3,
                                    ),
                                    blurRadius: 8,
                                    color: Color.fromRGBO(0, 0, 0, 0.01),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
