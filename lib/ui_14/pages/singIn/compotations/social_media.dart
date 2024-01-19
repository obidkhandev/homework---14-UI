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
              padding: EdgeInsets.only(left: 12,right: 12),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: kPrimaryColorUi14,
            ),
           child: Image.asset('assets/ui_14/images/facebook.png',alignment: Alignment.bottomCenter,),
          ),
          Container(
            height: 44,
            width: 44,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(image: AssetImage('assets/ui_14/images/instagram2.png'),)
              // gradient: LinearGradient(
              //   end: Alignment.bottomRight,
              //   // stops: ,
              //   begin: Alignment.topLeft,
              //   colors: [
              //   Color.fromRGBO(255, 213, 33, 1).withOpacity(.7),
              //     Color.fromRGBO(255, 213, 33, 1).withOpacity(.7),
              //     Color.fromRGBO(245, 0, 0, 1).withOpacity(.7),
              //     Color.fromRGBO(185, 0, 180, 1).withOpacity(.7),
              //     Color.fromRGBO(185, 0, 180, 1).withOpacity(.7),
              //     Color.fromRGBO(185, 0, 180, 1).withOpacity(.7),
              // ],),
            ),
            child: Image.asset('assets/ui_14/images/instagram.png'),
          ),
          Container(
            height: 44,
            width: 44,
            decoration: BoxDecoration(
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
