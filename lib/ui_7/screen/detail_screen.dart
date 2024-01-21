import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:modul_4_homework_obidxon/ui_7/constants.dart';
import 'package:modul_4_homework_obidxon/ui_7/widget/weekly_chart.dart';

class DetailScreenUi7 extends StatelessWidget {
  const DetailScreenUi7({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildDetailsAppBar(context),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 25),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    offset: const Offset(0, 21),
                    blurRadius: 53,
                    color: Colors.black.withOpacity(0.05),
                  )
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  buildTitleMoreIcon(),
                  const SizedBox(
                    height: 15,
                  ),
                  buildCaseNumber(context),
                  const SizedBox(
                    height: 15,
                  ),
                  const Text(
                    'From Health Center',
                    style: TextStyle(
                      fontWeight: FontWeight.w200,
                      color: kTextMediumColorUi7,
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(height: 15),
                  const WeeklyChart(),
                  const SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      buildInfoText(
                        'From Last Week',
                        '6.43',
                      ),
                      buildInfoText(
                        'Recovery Rate',
                        '9.43',
                      ),
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                        offset: const Offset(0, 21),
                        blurRadius: 53,
                        color: Colors.black.withOpacity(.05))
                  ]),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Global Map',
                        style: TextStyle(fontSize: 15),
                      ),
                      SvgPicture.asset('assets/ui_7/icons/more.svg'),
                    ],
                  ),
                  const SizedBox(height: 10,),
                  SvgPicture.asset('assets/ui_7/icons/map.svg'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  RichText buildInfoText(String title, String persentage) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: '$persentage%\n',
            style: const TextStyle(
              fontSize: 20,
              color: kPrimaryColorUi7,
            ),
          ),
          TextSpan(
            text: title,
            style: const TextStyle(color: kTextMediumColorUi7, height: 1.5),
          ),
        ],
      ),
    );
  }

  Row buildCaseNumber(BuildContext context) {
    return Row(
      children: [
        Text(
          '547 ',
          style: Theme.of(context)
              .textTheme
              .displaySmall!
              .copyWith(color: kPrimaryColorUi7, height: 1.2),
        ),
        const Text(
          '5.9%',
          style: TextStyle(color: kPrimaryColorUi7),
        ),
        SvgPicture.asset('assets/ui_7/icons/increase.svg'),
      ],
    );
  }

  Row buildTitleMoreIcon() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text(
          'New Cases',
          style: TextStyle(
            color: kTextMediumColorUi7,
            fontWeight: FontWeight.w600,
            fontSize: 15,
          ),
        ),
        SvgPicture.asset('assets/ui_7/icons/more.svg'),
      ],
    );
  }

  AppBar buildDetailsAppBar(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: kBackgroundColorUi7,
      leading: IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: const Icon(
          Icons.arrow_back_ios,
          color: kPrimaryColorUi7,
        ),
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
