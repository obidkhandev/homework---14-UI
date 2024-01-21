import 'package:flutter/material.dart';
import 'package:modul_4_homework_obidxon/ui_6/lib/constants.dart';

class SeccionCard extends StatelessWidget {
  final int seccionNum;
  final bool isDone;
  final Function()? press;
  const SeccionCard({
    super.key,
    required this.seccionNum,
    this.isDone = false,
    this.press,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraint) {
        return ClipRRect(
          borderRadius: BorderRadius.circular(13),
          child: Container(
            width: constraint.maxWidth / 2 - 10,
            // padding: EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(13),
              boxShadow: [
                BoxShadow(
                  offset: Offset(0, 10),
                  blurRadius: 23,
                  spreadRadius: -13,
                  color: kShadowColorUi6,
                ),
              ],
            ),
            child: Material(
              color: Colors.transparent,
              child: InkWell(
                onTap: press,
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Row(
                    children: [
                      Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          color: isDone ? kBlueColorUi6 : Colors.white,
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: kBlueColorUi6,
                          ),
                        ),
                        child: Icon(
                          Icons.play_arrow,
                          color: isDone ? Colors.white : kBlueColorUi6,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Seccion $seccionNum',
                        style: Theme.of(context).textTheme.titleMedium,
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
