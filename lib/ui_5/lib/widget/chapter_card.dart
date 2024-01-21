import 'package:flutter/material.dart';
import 'package:modul_4_homework_obidxon/ui_5/lib/consttants.dart';

class ChapterCard extends StatelessWidget {
  final String name;
  final String tag;
  final int number;
  final Function()? press;
  const ChapterCard({
    super.key,
    required this.name,
    required this.tag,
    required this.number,
    this.press,
  });

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
      margin: const EdgeInsets.only(bottom: 16),
      width: size.width - 48,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(38),
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, 10),
            blurRadius: 33,
            color: kShadowColorUi5,
          ),
        ],
      ),
      child: Row(
        children: [
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: 'Chapter $number : $name\n',
                  style: const TextStyle(
                    fontSize: 16,
                    color: kBlackColorUi5,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextSpan(
                  text: tag,
                  style: const TextStyle(color: kLightBlackColorUi5),
                ),
              ],
            ),
          ),
          const Spacer(),
          IconButton(
            onPressed: press,
            icon: const Icon(
              Icons.arrow_forward_ios,
              size: 18,
            ),
          ),
        ],
      ),
    );
  }
}
