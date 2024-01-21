import 'package:flutter/material.dart';
import 'package:modul_4_homework_obidxon/ui_11/lib/components.dart';

class ChipsCard extends StatelessWidget {
  final String title;
  final int count;
  final bool isActivate;
  const ChipsCard({
    super.key,
    required this.title,
    required this.count,
    this.isActivate = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 10),
      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 15),
      height: 34,
      decoration: BoxDecoration(
        color: isActivate ? selectedButtonColor : Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          if(isActivate)
              const Icon(
                  Icons.check,
                  color: Color.fromRGBO(108, 14, 228, 1),
                ),
          Text(
            '$title ($count)',
            style: sfProBold.copyWith(
              color: isActivate
                  ? const Color.fromRGBO(108, 14, 228, 1)
                  : textScondaryColor,
              fontSize: 14,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}
