import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'package:modul_4_homework_obidxon/ui_10/componants/movie_card.dart';
import 'package:modul_4_homework_obidxon/ui_10/constants.dart';
import 'package:modul_4_homework_obidxon/ui_10/model/movie.dart';

class MovieCorusel extends StatefulWidget {
  const MovieCorusel({super.key});

  @override
  State<MovieCorusel> createState() => _MovieCoruselState();
}

class _MovieCoruselState extends State<MovieCorusel> {
  late PageController _pageController;
  int initalPage = 0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(
      viewportFraction: 0.8,
      initialPage: initalPage,
    );
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
          onPageChanged: (value) {
            setState(() {
              initalPage = value;
            });
          },
          physics: ClampingScrollPhysics(),
          controller: _pageController,
          itemCount: movies.length,
          itemBuilder: (context, index) => buildMoviesSlider(index),
        ),
      ),
    );
  }

  Widget buildMoviesSlider(int index) {
    return AnimatedBuilder(
      animation: _pageController,
      builder: (context, child) {
        double value = 0;
        if (_pageController.position.haveDimensions) {
          value = index - _pageController.page!;
          value = (value * 0.038).clamp(-1, 1);
        }
        return AnimatedOpacity(
          duration: Duration(microseconds: 350),
          opacity: initalPage == index? 1 : 0.4,
          child: Transform.rotate(
            angle: math.pi * value,
            child: MovieCardUi10(
              movie: movies[index],
            ),
          ),
        );
      },
    );
  }
}
