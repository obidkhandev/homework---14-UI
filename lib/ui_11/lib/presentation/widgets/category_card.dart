import 'package:flutter/material.dart';
import 'package:modul_4_homework_obidxon/ui_11/lib/components.dart';

class CategoryCard extends StatelessWidget {
  final String image;
  final String title;
  final int? count;
  const CategoryCard({
    super.key,
    required this.image,
    required this.title,
    this.count,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: borderColor, width: 2),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Image.asset(
              image,
              fit: BoxFit.cover,
            ),
          ),
          // SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Text(
              title,
              style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                  color: textPrimaryColor),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 15,
            ),
            child: Text(
              '($count)',
              style: const TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: textScondaryColor,
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
