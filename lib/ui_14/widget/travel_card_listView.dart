import 'package:flutter/material.dart';
import 'package:modul_4_homework_obidxon/ui_14/pages/view/location.dart';

class TravelCardListView extends StatelessWidget {
  const TravelCardListView({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 210,
      width: size.width,
      child: ListView(
        padding: EdgeInsets.only(left: 20,right: 20),
        scrollDirection: Axis.horizontal,
        children: [
          LocationCardViewPage(size: size),
          SizedBox(width: 20,),
          LocationCardViewPage(size: size),
          SizedBox(width: 20,),
          LocationCardViewPage(size: size),
    
        ],
      ),
    );
  }
}
