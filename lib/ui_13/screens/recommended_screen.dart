import 'package:flutter/material.dart';
import 'package:modul_4_homework_obidxon/ui_13/constants.dart';
import 'package:modul_4_homework_obidxon/ui_13/widget/recomemded_card.dart';

class RecommendedScreenUi13 extends StatelessWidget {
  const RecommendedScreenUi13({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 60, left: 20,),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            RichText(
              text: TextSpan(
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                    color: Colors.black),
                children: [
                  TextSpan(text: 'Recommended'),
                  TextSpan(
                    text: 'course',
                    style: TextStyle(color: kPrimaryColorUi13),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 166,
              width: double.infinity,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: const [
                  RecommendCourseCard(
                    image: 'assets/ui_13/images/course-img (1).png',
                    courseName: 'Junior Scholars Institute',
                    courseTeacher: 'Jos Brown',
                    rating: 5,
                  ),
                  SizedBox(width: 20,),
            RecommendCourseCard(
              image: 'assets/ui_13/images/course-img (2).png',
              courseName: 'Junior Scholars Institute',
              courseTeacher: 'Jos Brown',
              rating: 4,
            )
                ],
              ),
            ),
            
          ],
        ),
      ),
    );
  }
}

