import 'package:flutter/material.dart';
import 'package:modul_4_homework_obidxon/ui_13/constants.dart';
import 'package:modul_4_homework_obidxon/ui_13/widget/recomemded_card.dart';
import 'package:modul_4_homework_obidxon/ui_13/widget/rich_text.dart';

class RecommendedScreenUi13 extends StatelessWidget {
  const RecommendedScreenUi13({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        height: 70,
        width: double.infinity,
        decoration: const BoxDecoration(color: Colors.white, boxShadow: [
          BoxShadow(
            offset: Offset(2, 0),
            blurRadius: 4,
            color: Color.fromRGBO(0, 0, 0, 0.12)
          ),
        ]),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.home,
                color: kPrimaryColorUi13,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search,
                color: Color.fromRGBO(64, 64, 64, 1),
                // size: 24,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.play_circle,
                color: Color.fromRGBO(64, 64, 64, 1),
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.person,
                color: Color.fromRGBO(64, 64, 64, 1),
              ),
            ),
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
            const SizedBox(height: 10),
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
            const SizedBox(height: 30),
            const MyRichText(firstText: 'Top ', secondText: 'trending '),
            const SizedBox(height: 20),
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
            const SizedBox(
              height: 30,
            ),
            RichText(
              text: const TextSpan(
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
            const SizedBox(
              height: 20,
            ),
            Container(
              alignment: Alignment.center,
              margin: const EdgeInsets.only(right: 20),
              height: 127,
              width: double.infinity,
              decoration: BoxDecoration(
                color: const Color.fromRGBO(236, 234, 255, 1),
                borderRadius: BorderRadius.circular(8),
                image: const DecorationImage(
                  image: AssetImage('assets/ui_13/images/course-img (6).png'),
                ),
              ),
            ),
            const Text(
              'Programming for beginner',
              style: TextStyle(fontSize: 10, fontWeight: FontWeight.w600),
            ),
            const SizedBox(
              height: 5
            ),
            const Text(
              'Alex Chris',
              style: TextStyle(
                fontSize: 8,
                fontWeight: FontWeight.w400,
                color: Color.fromRGBO(63, 63, 63, 1),
              ),
            ),
            Row(
              children: [
                const Text(
                  '5',
                  style: TextStyle(
                      color: Color.fromRGBO(255, 164, 27, 1),
                      fontWeight: FontWeight.w600,
                      fontSize: 10),
                ),
                const SizedBox(
                  width: 5
                ),
                for (int i = 0; i < 5; i++)
                  const Icon(
                    Icons.star,
                    color: Colors.amber,
                    size: 12,
                  ),
                const SizedBox(
                  width: 5,
                ),
                const Text(
                  '(1,454)',
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 8),
                ),
              ],
            ),
          const SizedBox(height: 10,),
          const Text('\$24',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w600),),
          ],
        ),
      ),
    );
  }
}

