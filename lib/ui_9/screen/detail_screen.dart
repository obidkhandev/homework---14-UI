import 'package:flutter/material.dart';
import 'package:modul_4_homework_obidxon/ui_9/constants.dart';
import 'package:modul_4_homework_obidxon/ui_9/screen/details_body.dart';
import 'package:modul_4_homework_obidxon/ui_9/widget/details_app_bar.dart';

class DetailScrenUi9 extends StatelessWidget {
  const DetailScrenUi9({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColorUi9,
      appBar: detailsAppBar(),
      body: const DetailsBodyUi9(),
    );
  }
}