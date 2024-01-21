import 'package:flutter/material.dart';
import 'package:modul_4_homework_obidxon/ui_14/compotations.dart';

class SocialMedia extends StatelessWidget {
  const SocialMedia({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 80,right: 80),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            height: 44,
            width: 44,
              padding: const EdgeInsets.only(left: 12,right: 12),
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: kPrimaryColorUi14,
            ),
           child: Image.asset('assets/ui_14/images/facebook.png',alignment: Alignment.bottomCenter,),
          ),
          Container(
            height: 44,
            width: 44,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(image: AssetImage('assets/ui_14/images/instagram2.png'),)
              
            ),
            child: Image.asset('assets/ui_14/images/instagram.png'),
          ),
          Container(
            height: 44,
            width: 44,
            decoration: const BoxDecoration(
              color: kPrimaryColorUi14,
              shape: BoxShape.circle,
            ),
            child: Image.asset('assets/ui_14/images/twit.png'),
          ),
        ],
      ),
    );
  }
}
