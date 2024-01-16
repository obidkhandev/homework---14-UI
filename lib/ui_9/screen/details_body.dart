import 'package:flutter/material.dart';
import 'package:modul_4_homework_obidxon/ui_9/widget/item_image.dart';
import 'package:modul_4_homework_obidxon/ui_9/widget/item_info.dart';

class DetailsBodyUi9 extends StatelessWidget {
  const DetailsBodyUi9({super.key});

  @override
  Widget build(BuildContext context) {
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

