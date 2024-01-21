import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:modul_4_homework_obidxon/ui_2/constant.dart';
import 'package:modul_4_homework_obidxon/ui_2/screens/detail_page.dart';
import 'package:modul_4_homework_obidxon/ui_2/widgets/counter.dart';
import 'package:modul_4_homework_obidxon/ui_2/widgets/my_header.dart';

// ignore: camel_case_types
class HomePageUi_2 extends StatelessWidget {
  const HomePageUi_2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            MyHeader(
              press: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const DetailPageUi_2();
                },),);
              },
              image: 'assets/ui_2/icons/Drcorona.svg',
              titleTop: 'All you need',
              titleBottom: 'is stay at home.',
            ),
            Container(
              height: 50,
              margin: const EdgeInsets.symmetric(horizontal: 15),
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(40),
                border: Border.all(color: Colors.grey.shade200),
              ),
              child: Row(
                children: [
                  SvgPicture.asset('assets/ui_2/icons/maps-and-flags.svg'),
                  const SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: DropdownButton(
                      icon: SvgPicture.asset('assets/ui_2/icons/dropdown.svg'),
                      underline: const SizedBox(),
                      isExpanded: true,
                      value: 'Uzbekistan',
                      items: ['Uzbekistan', 'Malaysia']
                          .map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                            value: value, child: Text(value));
                      }).toList(),
                      onChanged: (value) {},
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      RichText(
                        text: const TextSpan(
                          children: [
                            TextSpan(
                                text: 'Case update\n', style: kTitleTextstyle),
                            TextSpan(
                                text: 'Newest update March 28',
                                style: kSubTextstyle)
                          ],
                        ),
                      ),
                      const Text(
                        'See details',
                        style: TextStyle(
                            color: kPrimaryColor, fontWeight: FontWeight.w600),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Container(
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                            offset: const Offset(0, 10),
                            blurRadius: 30,
                            color: kShadowColor)
                      ],
                    ),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Counter(
                          color: kInfectedColor,
                          title: 'Infected',
                          number: 1046,
                        ),
                        Counter(
                          color: kRecoverColor,
                          title: 'Recover',
                          number: 43,
                        ),
                        Counter(
                          color: kDeathColor,
                          title: 'Death',
                          number: 911,
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Spread of Virus',
                        style: kTitleTextstyle,
                      ),
                      Text(
                        'See details',
                        style: TextStyle(
                          color: kPrimaryColor,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 10),
                    padding: const EdgeInsets.all(10),
                    height: 160,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          offset: const Offset(0, 10),
                          blurRadius: 20,
                          color: kShadowColor,
                        ),
                      ],
                    ),
                    child: Image.asset('assets/ui_2/images/map.png'),
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
