import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:modul_4_homework_obidxon/ui_3/constants.dart';
import 'package:modul_4_homework_obidxon/ui_3/screens/home_page.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 40),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return const HomePageUi_3();
                    },),);
                  },
                  child: SvgPicture.asset(
                    'assets/ui_3/icons/backward.svg',
                    height: 11,
                  ),
                ),
                SvgPicture.asset(
                  'assets/ui_3/icons/menu.svg',
                  height: 11,
                ),
              ],
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 15),
              padding: const EdgeInsets.all(6),
              height: 300,
              width: 300,
              decoration: const BoxDecoration(
                  shape: BoxShape.circle, color: kSecondaryColor),
              child: Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/ui_3/images/image_1_big.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: 'Vegan salad bowl\n',
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                      TextSpan(
                        text: 'With red tomato',
                        style: TextStyle(
                          color: kTextColor.withOpacity(.5),
                        ),
                      ),
                    ],
                  ),
                ),
                Text(
                  '\$20',
                  style: Theme.of(context)
                      .textTheme
                      .titleLarge!
                      .copyWith(color: kPirimaryColor),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
                'Bu yil asosan ChatGPT va Bard kabi til modellari (LLM - Large language models) kuchaygan boʻlsa, kelayotgan yilda LVM (Large Video Models) tasvir va videolar uchun muhim marra bosib o\'tiladi. '),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.only(bottom: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(
                        vertical: 20, horizontal: 30),
                    decoration: BoxDecoration(
                        color: kPirimaryColor.withOpacity(.2),
                        borderRadius: BorderRadius.circular(25)),
                    child: Row(
                      children: [
                        Text(
                          'Add to bag',
                          style: Theme.of(context).textTheme.labelLarge,
                        ),
                        const SizedBox(
                          width: 25,
                        ),
                        SvgPicture.asset(
                          'assets/ui_3/icons/forward.svg',
                          height: 11,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // padding: EdgeInsets.all(10),
                    height: 70,
                    width: 70,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: kPirimaryColor.withOpacity(.25),
                    ),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          padding: const EdgeInsets.all(12),
                          height: 55,
                          width: 55,
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle, color: kPirimaryColor),
                          child: SvgPicture.asset('assets/ui_3/icons/bag.svg'),
                        ),
                        Positioned(
                          right: 15,
                          bottom: 10,
                          child: Container(
                            alignment: Alignment.center,
                            height: 25,
                            width: 25,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white,
                            ),
                            child: Text(
                              '0',
                              style: Theme.of(context)
                                  .textTheme
                                  .labelLarge!
                                  .copyWith(
                                      color: kPirimaryColor, fontSize: 16),
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
