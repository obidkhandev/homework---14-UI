import 'package:flutter/material.dart';
import 'package:modul_4_homework_obidxon/ui_10/componants/body_details.dart';
import 'package:modul_4_homework_obidxon/ui_10/model/movie.dart';

class DetailScreenUi10 extends StatelessWidget {
  final Movie movie;
  const DetailScreenUi10({super.key, required this.movie});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BodyDetailsUi10(
        movie: movie,
      ),
    );
  }
}
