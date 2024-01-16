import 'package:flutter/material.dart';
import 'package:modul_4_homework_obidxon/ui_9/constants.dart';
import 'package:modul_4_homework_obidxon/ui_9/widget/details_app_bar.dart';
import 'package:modul_4_homework_obidxon/ui_9/widget/item_image.dart';
import 'package:modul_4_homework_obidxon/ui_9/widget/item_info.dart';

class DetailScrenUi9 extends StatelessWidget {
  const DetailScrenUi9({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColorUi9,
      appBar: detailsAppBar(),
      body: DetailsBodyUi9(),
    );
  }
}

class DetailsBodyUi9 extends StatelessWidget {
  const DetailsBodyUi9({super.key});

  @override
  Widget build(BuildContext context) {
    // Size size = MediaQuery.of(context).size;
    return const Column(
      children: [
        ItemImageUi9(
          imgSvg: 'assets/ui_9/images/burger.png',
        ),
        Expanded(
          child: ItemInfoUi9(),
        )
      ],
    );
  }
}

