import 'package:flutter/material.dart';
import 'package:modul_4_homework_obidxon/ui_14/compotations.dart';

class SetDate extends StatelessWidget {
  const SetDate({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20),
      height: 150,
      padding: const EdgeInsets.all(16),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(24),
        boxShadow: const [
          BoxShadow(
              offset: Offset(0, 6),
              blurRadius: 20,
              color: Color.fromRGBO(180, 188, 201, 0.16)),
        ],
      ),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                "22 October",
                style: kSfUiSytle.copyWith(
                  color: kTextColorUi14,
                  fontWeight: FontWeight.w600,
                  fontSize: 20,
                ),
              ),
              const Spacer(),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.arrow_back_ios_new,
                  size: 22,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.arrow_forward_ios_rounded,
                  size: 22,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const SetDateRichText(
                firstText: "S",
                secondText: "18",
              ),
              const SetDateRichText(
                firstText: "M",
                secondText: "19",
              ),
              const SetDateRichText(
                firstText: "W",
                secondText: "21",
              ),
              Container(
                width: 44,
                height: 70,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: kPrimaryColorUi14,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: const SetDateRichText(
                  firstText: "T",
                  firstTextColor: Colors.white,
                  secondText: "22",
                  secondTextColor: Colors.white,
    
                ),
              ),
              const SetDateRichText(
                firstText: "F",
                secondText: "23",
              ),
              const SetDateRichText(
                firstText: "S",
                secondText: "24",
              ),
            ],
          )
        ],
      ),
    );
  }
}

class SetDateRichText extends StatelessWidget {
  final Color firstTextColor;
  final Color secondTextColor;
  final String firstText;
  final String secondText;
  const SetDateRichText({
    super.key,
    required this.firstText,
    required this.secondText,
    this.firstTextColor = kSubTextColorUi14,
    this.secondTextColor = kTextColorUi14,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(style: kSfUiSytle.copyWith(color: firstTextColor), children: [
        TextSpan(
          text: "$firstText\n\n",
        ),
        TextSpan(
          text: secondText,
          style: TextStyle(color: secondTextColor,),
        )
      ],),
    );
  }
}
