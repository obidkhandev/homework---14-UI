import 'package:flutter/material.dart';
import 'package:modul_4_homework_obidxon/ui_2/constant.dart';
import 'package:modul_4_homework_obidxon/ui_2/widgets/my_header.dart';
import 'package:modul_4_homework_obidxon/ui_2/widgets/prevent_cart.dart';
import 'package:modul_4_homework_obidxon/ui_2/widgets/symptoms_cart.dart';

class DetailPageUi_2 extends StatelessWidget {
  const DetailPageUi_2({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            MyHeader(
                press: () {
                  Navigator.pop(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return const DetailPageUi_2();
                      },
                    ),
                  );
                },
                image: 'assets/ui_2/icons/coronadr.svg',
                titleTop: 'Get to know',
                titleBottom: 'About Covid-19'),
            const Padding(
              padding: EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Symptoms',
                    style: kTitleTextstyle,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SymptomsCard(
                        title: 'Headache',
                        image: 'assets/ui_2/images/headache.png',
                        isActivate: true,
                      ),
                      SymptomsCard(
                        title: 'Fever',
                        image: 'assets/ui_2/images/fever.png',
                      ),
                      SymptomsCard(
                        title: 'Caugh',
                        image: 'assets/ui_2/images/caugh.png',
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Prevention',
                    style: kTitleTextstyle,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  PreventCart(
                    image: 'assets/ui_2/images/wear_mask.png',
                    title: 'Wear face Mask',
                    text:
                        'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classion Latin',
                  ),
                  PreventCart(
                    image: 'assets/ui_2/images/wash_hands.png',
                    title: 'Wash your hands',
                    text:
                        'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classion Latin',
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}
