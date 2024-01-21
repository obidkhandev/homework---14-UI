import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:modul_4_homework_obidxon/ui_7/constants.dart';
import 'package:modul_4_homework_obidxon/ui_7/screen/detail_screen.dart';
import 'package:modul_4_homework_obidxon/ui_7/widget/info_card.dart';

class HomeScreenUi7 extends StatelessWidget {
  const HomeScreenUi7({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding:
                  const EdgeInsets.only(left: 20, top: 20, right: 20, bottom: 40),
              width: double.infinity,
              decoration: BoxDecoration(
                color: kPrimaryColorUi7.withOpacity(.03),
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(50),
                  bottomRight: Radius.circular(50),
                ),
              ),
              child: Wrap(
                runSpacing: 20,
                spacing: 20,
                children: [
                  const LineCardUi7(
                    title: 'Confirmed Case',
                    effectedNum: 1062,
                    iconColor: Color(0xFFFF8C00),
                  ),
                  const LineCardUi7(
                    title: 'Total Deaths',
                    effectedNum: 75,
                    iconColor: Color(0xFFFF2D55),
                  ),
                  const LineCardUi7(
                    title: 'Total Recovered',
                    effectedNum: 689,
                    iconColor: Color(0xFF50E3C2),
                  ),
                  LineCardUi7(
                    title: 'New Cases',
                    effectedNum: 95,
                    iconColor: const Color(0xFF5856D6),
                    press: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return const DetailScreenUi7();
                          },
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Preventions',
                    style: Theme.of(context)
                        .textTheme
                        .titleLarge!
                        .copyWith(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  buildPreventCardUi7(),
                  const SizedBox(height: 40),
                  buildHelpCardUi7(context),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Row buildPreventCardUi7() {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        PreventitonCardUi7(
          title: 'Wash Hands',
          svgScr: 'assets/ui_7/icons/hand_wash.svg',
        ),
        PreventitonCardUi7(
          title: 'Use Cards',
          svgScr: 'assets/ui_7/icons/use_mask.svg',
        ),
        PreventitonCardUi7(
          title: 'Clean Disinfect',
          svgScr: 'assets/ui_7/icons/Clean_Disinfect.svg',
        ),
      ],
    );
  }

  SizedBox buildHelpCardUi7(BuildContext context) {
    return SizedBox(
      height: 150,
      width: double.infinity,
      child: Stack(
        alignment: Alignment.bottomLeft,
        children: [
          Container(
            padding: EdgeInsets.only(
              left: MediaQuery.of(context).size.width * .4,
              top: 20,
              right: 20,
            ),
            height: 130,
            width: double.infinity,
            decoration: BoxDecoration(
              gradient: const LinearGradient(
                colors: [
                  Color(0xFF60BE93),
                  Color(0xFF1B8D59),
                ],
              ),
              borderRadius: BorderRadius.circular(20),
            ),
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: 'Dial 999 for \nMedical Help!\n',
                    style: Theme.of(context)
                        .textTheme
                        .titleLarge!
                        .copyWith(color: Colors.white),
                  ),
                  TextSpan(
                    text: 'If any symptoms appear',
                    style: TextStyle(
                      color: Colors.white.withOpacity(.7),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: SvgPicture.asset('assets/ui_7/icons/nurse.svg'),
          ),
          Positioned(
            top: 30,
            right: 10,
            child: SvgPicture.asset('assets/ui_7/icons/virus.svg'),
          ),
        ],
      ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      elevation: 0,
      backgroundColor: kPrimaryColorUi7.withOpacity(.03),
      leading: IconButton(
        onPressed: () {},
        icon: SvgPicture.asset('assets/ui_7/icons/menu.svg'),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: SvgPicture.asset('assets/ui_7/icons/search.svg'),
        ),
      ],
    );
  }
}

class PreventitonCardUi7 extends StatelessWidget {
  final String svgScr;
  final String title;
  const PreventitonCardUi7({
    super.key,
    required this.svgScr,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      // crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SvgPicture.asset(svgScr),
        Text(
          title,
          style: Theme.of(context)
              .textTheme
              .bodyMedium!
              .copyWith(color: kPrimaryColorUi7),
        ),
      ],
    );
  }
}
