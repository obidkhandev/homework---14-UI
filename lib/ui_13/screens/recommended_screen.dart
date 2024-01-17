import 'package:flutter/material.dart';
import 'package:modul_4_homework_obidxon/ui_13/constants.dart';
import 'package:modul_4_homework_obidxon/ui_13/widget/recomemded_card.dart';

class RecommendedScreenUi13 extends StatelessWidget {
  const RecommendedScreenUi13({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        height: 60,
        width: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(onPressed: (){}, icon: Icon(Icons.home,color: kPrimaryColorUi13,),),
            IconButton(onPressed: (){}, icon: Icon(Icons.search,color: Color.fromRGBO(64, 64, 64, 1),),),
            IconButton(onPressed: (){}, icon: Icon(Icons.play_circle,color: Color.fromRGBO(64, 64, 64, 1),),),
            IconButton(onPressed: (){}, icon: Icon(Icons.person,color: Color.fromRGBO(64, 64, 64, 1),),),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          top: 60,
          left: 20,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const MyRichText(
              firstText: 'Recommended ',
              secondText: 'course ',
            ),
            const SizedBox(
              height: 10
            ),
            SizedBox(
              height: 186,
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
                  SizedBox(width: 20),
                  RecommendCourseCard(
                    image: 'assets/ui_13/images/course-img (2).png',
                    courseName: 'Junior Scholars Institute',
                    courseTeacher: 'Jos Brown',
                    rating: 4,
                  )
                ],
              ),
            ),
            SizedBox(height: 30),
            MyRichText(firstText: 'Top ', secondText: 'trending '),
            SizedBox(height: 20),
            SizedBox(
              height: 186,
              width: double.infinity,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: const [
                  RecommendCourseCard(
                    image: 'assets/ui_13/images/course-img.png',
                    courseName: 'Junior Scholars Institute',
                    courseTeacher: 'Jos Brown',
                    rating: 5,
                  ),
                  SizedBox(width: 20),
                  RecommendCourseCard(
                    image: 'assets/ui_13/images/course-img (5).png',
                    courseName: 'Junior Scholars Institute',
                    courseTeacher: 'Jos Brown',
                    rating: 5,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            RichText(
              text: TextSpan(
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    fontSize: 16),
                children: [
                  TextSpan(text: 'Our '),
                  TextSpan(
                    text: 'top picks for ',
                    style: TextStyle(color: kPrimaryColorUi13),
                  ),
                  TextSpan(text: 'for you')
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(right: 20),
              height: 127,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color.fromRGBO(236, 234, 255, 1),
                borderRadius: BorderRadius.circular(8),
                image: DecorationImage(
                  image: AssetImage('assets/ui_13/images/course-img (6).png'),
                ),
              ),
            ),
            Text(
              'Programming for beginner',
              style: TextStyle(fontSize: 10, fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              'Alex Chris',
              style: TextStyle(
                fontSize: 8,
                fontWeight: FontWeight.w400,
                color: Color.fromRGBO(63, 63, 63, 1),
              ),
            ),
            Row(
              children: [
                Text(
                  '5',
                  style: TextStyle(
                      color: Color.fromRGBO(255, 164, 27, 1),
                      fontWeight: FontWeight.w600,
                      fontSize: 10),
                ),
                SizedBox(
                  width: 5,
                ),
                for (int i = 0; i < 5; i++)
                  Icon(
                    Icons.star,
                    color: Colors.amber,
                    size: 12,
                  ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  '(1,454)',
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 8),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class MyRichText extends StatelessWidget {
  final String firstText;
  final String secondText;
  const MyRichText({
    super.key,
    required this.firstText,
    required this.secondText,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        style: TextStyle(
            fontWeight: FontWeight.w600, fontSize: 16, color: Colors.black),
        children: [
          TextSpan(text: firstText),
          TextSpan(
            text: secondText,
            style: TextStyle(color: kPrimaryColorUi13),
          ),
        ],
      ),
    );
  }
}
