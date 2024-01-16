import 'package:flutter/material.dart';
import 'package:modul_4_homework_obidxon/ui_10/componants/category_list.dart';
import 'package:modul_4_homework_obidxon/ui_10/componants/genres.dart';
import 'package:modul_4_homework_obidxon/ui_10/constants.dart';

class BodyUi10 extends StatelessWidget {
  const BodyUi10({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CategoryListUi10(),
        Genres(),
        MovieCorusel(),
      ],
    );
  }
}

class MovieCorusel extends StatefulWidget {
  const MovieCorusel({super.key});

  @override
  State<MovieCorusel> createState() => _MovieCoruselState();
}

class _MovieCoruselState extends State<MovieCorusel> {
  late PageController _pageController;
  int initalPage = 1;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: kDefaultPaddingUi10),
      child: AspectRatio(
        aspectRatio: 0.85,
        child: PageView.builder(
          itemCount: 3,
          itemBuilder: (context, index) => Container(
            margin: EdgeInsets.all(10),
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}

