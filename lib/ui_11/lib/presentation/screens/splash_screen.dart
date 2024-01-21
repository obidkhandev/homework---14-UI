import 'package:flutter/material.dart';
import 'package:modul_4_homework_obidxon/ui_11/lib/components.dart';
import 'package:modul_4_homework_obidxon/ui_11/lib/presentation/screens/categories_screen.dart';

class SplashScreenUi11 extends StatelessWidget {
  const SplashScreenUi11({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color.fromRGBO(126, 25, 255, 0.9),
      body: Stack(
        children: [
          Positioned(
            right: 0,
            child: Image.asset(
              'assets/ui_11/images/BG.png',
              height: size.height * .65,
              alignment: Alignment.centerRight,
            ),
          ),
          Positioned(
            left: 20,
            top: 60,
            child: Container(
              height: 60,
              width: 60,
              padding: const EdgeInsets.all(10),
              decoration: const BoxDecoration(
                color: Colors.green,
                shape: BoxShape.circle,
              ),
              child: Image.asset('assets/ui_11/images/D.png'),
            ),
          ),
          Positioned(
            bottom: 0,
            child: Container(
              height: 500,
              width: 400,
              decoration: const BoxDecoration(
                color: Color.fromRGBO(246, 245, 245, 1),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25),
                  topRight: Radius.circular(25),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 50),
                      padding: const EdgeInsets.all(15),
                      height: 100,
                      width: 100,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: AssetImage('assets/ui_11/icons/Box.png'),
                        ),
                      ),
                    ),
                    Text(
                      'Non-Contact',
                      style: sfProBold.copyWith(color: textScondaryColor),
                    ),
                    Text(
                      'Deliveries',
                      style: sfProBold.copyWith(color: textScondaryColor),
                    ),
                    const Text(
                      'When placing an order, select the option “Contactless delivery” and the courier will leave your order at the door.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: textScondaryColor,
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return const CategoryScreen();
                            },
                          ),
                        );
                      },
                      child: Container(
                        margin: const EdgeInsets.symmetric(vertical: 15),
                        padding: const EdgeInsets.only(top: 15),
                        height: 50,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: primaryButton,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Text(
                          'Order Now'.toUpperCase(),
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      'DISSMISS',
                      style: TextStyle(
                          color: textScondaryColor,
                          fontSize: 18,
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
