import 'package:flutter/material.dart';
import 'package:modul_4_homework_obidxon/ui_10/componants/category_list.dart';
import 'package:modul_4_homework_obidxon/ui_10/componants/genres.dart';
import 'package:modul_4_homework_obidxon/ui_10/componants/movie_carusel.dart';
import 'package:modul_4_homework_obidxon/ui_10/constants.dart';

class BodyUi10 extends StatelessWidget {
  const BodyUi10({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          CategoryListUi10(),
          Genres(),
          SizedBox(height: kDefaultPaddingUi10,),
          MovieCorusel(),
        ],
      ),
    );
  }
}

