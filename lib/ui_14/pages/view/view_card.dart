import 'package:flutter/material.dart';
import 'package:modul_4_homework_obidxon/ui_14/compotations.dart';

class ViewCard extends StatelessWidget {
  final double left;
  final double top;
  final String image;
  final String viewName;
  final double mil;
  final double width;
  const ViewCard({
    super.key,
    required this.left,
    required this.top,
    required this.image,
    required this.viewName,
    required this.mil,
    this.width = 184
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: top,
        left: left,
      ),
      padding: EdgeInsets.all(10),
      // height: 78,
      width: width,
      decoration: BoxDecoration(
        color: kViewContainerColorUi14,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          Image.asset(image),
          SizedBox(width: 10),
          RichText(
            text: TextSpan(
                style: kSfUiSytle.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                ),
                children: [
                  TextSpan(
                    text: "$viewName\n",
                  ),
                  TextSpan(text: "$mil mi")
                ]),
          ),
        ],
      ),
    );
  }
}
