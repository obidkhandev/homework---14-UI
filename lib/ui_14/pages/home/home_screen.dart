import 'package:flutter/material.dart';
import 'package:modul_4_homework_obidxon/ui_2/widgets/my_header.dart';

class HomeScreenUi14 extends StatelessWidget {
  const HomeScreenUi14({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: ClipPath(
        clipper: (),
        child: Container(
            height: 100,
            width: double.infinity,
            decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.only(
                    // topRight: Radius.circular(50),
                    // topLeft: Radius.elliptical(40, 100),

                    ),
                boxShadow: [
                  BoxShadow(
                      offset: Offset(-6, 0),
                      blurRadius: 16,
                      color: Color.fromRGBO(175, 184, 198, 0.12))
                ]),
            child: Row()),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, top: 56),
        child: Column(
          children: [],
        ),
      ),
    );
  }
}

//Add this CustomPaint widget to the Widget Tree

//Copy this CustomPainter code to the Bottom of the File

@override
void paint(Canvas canvas, Size size) {
  Path path_0 = Path();
  path_0.moveTo(0, 56.9997);
  path_0.cubicTo(0, 42.0656, 10.9827, 29.3778, 25.7905, 27.4402);
  path_0.cubicTo(142.999, 12.1035, 221.685, 12.1954, 348.854, 27.666);
  path_0.cubicTo(363.809, 29.4853, 375, 42.2382, 375, 57.3033);
  path_0.lineTo(375, 84.0001);
  path_0.cubicTo(375, 100.569, 361.569, 114, 345, 114);
  path_0.lineTo(30, 114);
  path_0.cubicTo(13.4315, 114, 0, 100.569, 0, 84);
  path_0.lineTo(0, 56.9997);
  path_0.close();

  Paint paint_0_fill = Paint()..style = PaintingStyle.fill;
  paint_0_fill.color = Colors.white.withOpacity(1.0);
  canvas.drawPath(path_0, paint_0_fill);
}

// @override
// bool shouldRepaint(covariant CustomPainter oldDelegate) {
//   return true;
// }
