import 'package:flutter/material.dart';
import 'package:modul_4_homework_obidxon/ui_2/constant.dart';

class SymptomsCard extends StatelessWidget {
  final String image;
  final String title;
  final bool isActivate;
  const SymptomsCard({
    super.key,
    this.isActivate = false,
    required this.image,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
        boxShadow: [
          isActivate
              ? BoxShadow(
                  color: kActivateShadowColor,
                  offset: const Offset(0, 10),
                  blurRadius: 30)
              : BoxShadow(
                  color: kShadowColor,
                  offset: const Offset(0, 10),
                  blurRadius: 30)
        ],
      ),
      child: Column(
        children: [
          Image.asset(
            image,
          ),
          Text(
            title,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
