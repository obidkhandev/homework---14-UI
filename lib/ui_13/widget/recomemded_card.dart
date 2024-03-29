import 'package:flutter/material.dart';

class RecommendCourseCard extends StatelessWidget {
  final String image;
  final String courseName;
  final String courseTeacher;
  final int rating;
  const RecommendCourseCard({
    super.key,
    required this.image,
    required this.courseName,
    required this.courseTeacher,
    required this.rating,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 166,
      width: 200,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 88,
            width: 200,
            decoration: BoxDecoration(
              // color: Colors.amber,
              image: DecorationImage(
                image: AssetImage(image),
                alignment: Alignment.topLeft,
                fit: BoxFit.fitWidth,
              ),
            ),
          ),
          const SizedBox(height: 10),
          Text(
            courseName,
            style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 10),
          ),
          const SizedBox(height: 5),
          Text(
            courseTeacher,
            style: const TextStyle(
                fontWeight: FontWeight.w400, fontSize: 8, color: Colors.grey),
          ),
          const SizedBox(height: 10),
          Row(
            children: [
              Text(
                '$rating',
                style: const TextStyle(
                    color: Color.fromRGBO(255, 164, 27, 1),
                    fontWeight: FontWeight.w600,
                    fontSize: 10),
              ),
              const SizedBox(
                width: 5,
              ),
              for (int i = 0; i < rating; i++)
                const Icon(
                  Icons.star,
                  color: Colors.amber,
                  size: 12,
                ),
              for (int i = 0; i < 5 - rating; i++)
                const Icon(
                  Icons.star,
                  color: Colors.grey,
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
    );
  }
}
