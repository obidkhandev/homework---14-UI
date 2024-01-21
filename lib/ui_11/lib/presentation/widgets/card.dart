import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  const MyCard({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 374,
      height: 240,
      child: Stack(
        children: [
          Positioned(
            left: 0,
            top: 0,
            child: Container(
              width: 374,
              height: 240,
              decoration: BoxDecoration(
                color: const Color(0xFFD0BBFF),
                borderRadius: BorderRadius.circular(8)
              )
            ),
          ),
          Positioned(
            left: 0,
            top: 0,
            child: Container(
              width: 374,
              height: 240,
              decoration: ShapeDecoration(
                gradient: const LinearGradient(
                  begin: Alignment(1.00, 0.00),
                  end: Alignment(-1, 0),
                  colors: [
                    Color(0xFFB993D6),
                    Color(0xFF8CA6DB),
                  ],
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
          ),
          Positioned(
            left: 124,
            top: -42,
            child: Container(
              width: 335,
              height: 331,
              decoration: ShapeDecoration(
                color: Colors.white.withOpacity(0.1),
                shape: const OvalBorder(),
              ),
            ),
          ),
          const Positioned(
            left: 29,
            top: 96,
            child: SizedBox(
              width: 316,
              height: 34,
              child: Text(
                '4747  4747  4747  4747',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 26,
                  fontFamily: 'SF Pro Display',
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
          const Positioned(
            left: 27,
            top: 181.11,
            child: Text(
              'ALEXANDRA SMITH',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontFamily: 'SF Pro Display',
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          const Positioned(
            left: 290,
            top: 177,
            child: Text(
              '07/21',
              textAlign: TextAlign.right,
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontFamily: 'SF Pro Display',
                fontWeight: FontWeight.w500,
                height: 0.08,
                letterSpacing: 0.05,
              ),
            ),
          ),
          Positioned(
            left: 280,
            top: 31,
            child: SizedBox(
              width: 64.71,
              height: 40,
              child: Stack(
                children: [
                  Positioned(
                    right: 15,
                    child: Container(
                      height: 40,
                      width: 32,
                      decoration: const BoxDecoration(
                        color: Colors.amber,
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                  Container(
                    height: 40,
                    width: 32,
                    decoration: const BoxDecoration(
                      color: Colors.red,
                      shape: BoxShape.circle,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
