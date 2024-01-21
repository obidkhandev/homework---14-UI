import 'package:flutter/material.dart';
import 'package:modul_4_homework_obidxon/ui_11/lib/components.dart';

class SearchWid extends StatelessWidget {
  const SearchWid({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
      margin: const EdgeInsets.symmetric(vertical: 20),
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 12,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(40),
        border: Border.all(
          color: const Color.fromRGBO(217, 208, 227, 1),
        ),
        color: Colors.white,
      ),
      child: const Row(
        children: [
          Icon(Icons.search,size: 24,),
          SizedBox(width: 30,),
          Text(
            'Search',
            style: TextStyle(color: textScondaryColor,fontSize: 16,fontWeight: FontWeight.w400)
          ),
        ],
      ),
    );
  }
}
