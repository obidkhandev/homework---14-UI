import 'package:flutter/material.dart';
import 'package:modul_4_homework_obidxon/ui_4/lib/constant.dart';
import 'package:modul_4_homework_obidxon/ui_4/lib/widget/sing_in_page.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 3,
            child: Container(
              decoration: const BoxDecoration(
                  image: DecorationImage(
                image: AssetImage('assets/person.jpeg'),
              ),),
            ),
          ),
          Expanded(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: 'Baking Lesson\n'.toUpperCase(),
                      style: Theme.of(context).textTheme.displaySmall,
                    ),
                    TextSpan(
                        text: 'Master the art of baking'.toUpperCase(),
                        style: Theme.of(context).textTheme.headlineSmall),
                  ],
                ),
              ),
              FittedBox(
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return const SingInPage();
                        },
                      ),
                    );
                  },
                  child: Container(
                    margin: const EdgeInsets.only(bottom: 30),
                    padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: kPrimaryColorUi4),
                    child: Row(
                      children: [
                        Text(
                          'start Lesson'.toUpperCase(),
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium!
                              .copyWith(color: Colors.black),
                        ),
                        const SizedBox(
                          width: 30,
                        ),
                        const Icon(
                          Icons.arrow_forward,
                          color: Colors.black,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          )),
        ],
      ),
    );
  }
}
