import 'package:flutter/material.dart';
import 'package:modul_4_homework_obidxon/ui_14/compotations.dart';

class ChatImageAndOnline extends StatelessWidget {
  final String image;
  final Color color;
  const ChatImageAndOnline({
    super.key,
    required this.image,
    this.color = kSubTextColorUi14,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.bottomRight,
      height: 55,
      width: 55,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          image: AssetImage(image),
        ),
      ),
      child: Container(
        height: 16,
        width: 16,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: color,
          boxShadow: [
            BoxShadow(
              offset: Offset(0, 4),
              blurRadius: 8,
              color: Color.fromRGBO(123, 116, 116, 0.1),
            ),
          ],
          border: Border.all(color: Colors.white, width: 2),
        ),
      ),
    );
  }
}
