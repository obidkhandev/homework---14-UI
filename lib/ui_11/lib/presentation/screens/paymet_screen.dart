import 'package:flutter/material.dart';
import 'package:modul_4_homework_obidxon/ui_11/lib/components.dart';
import 'package:modul_4_homework_obidxon/ui_11/lib/presentation/widgets/card.dart';
import 'package:modul_4_homework_obidxon/ui_11/lib/presentation/widgets/text_field.dart';

class PaymetScreen extends StatelessWidget {
  const PaymetScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backroundColor,
      body: Padding(
        padding:
            const EdgeInsets.only(left: 20, right: 20, top: 60, bottom: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
            const SizedBox(
              height: 10,
            ),
            const Text(
              'Credit / Debit card',
              style: sfProBold,
            ),
            const SizedBox(
              height: 20,
            ),
            const MyCard(),
            const SizedBox(
              height: 15
            ),
            const Center(
              child: Icon(
                Icons.photo_camera_outlined,
                color: textScondaryColor,
                size: 30,
              ),
            ),
            const MyTextField(
              text: 'Alexandra Smith',
              hintText: 'Name on card',
            ),
            const SizedBox(height: 15),
            const MyTextField(
              text: '4747  4747  4747  4747',
              hintText: 'Card Number',
            ),
            const SizedBox(height: 15),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                MyTextField(
                  text: '07/21',
                  hintText: 'Expiry date',
                  width: 170,
                ),
                MyTextField(
                  width: 170,
                  text: '474',
                  hintText: 'CVC',
                  iconHave: true,
                  icon: Icons.credit_card,
                ),
              ],
            ),
            const Spacer(),
            Container(
              alignment: Alignment.center,
              height: 56,
              width: double.infinity,
              decoration: BoxDecoration(
                color: const Color.fromRGBO(10, 207, 131, 1),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Text(
                'use this card'.toUpperCase(),
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

