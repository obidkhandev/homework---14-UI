import 'package:flutter/material.dart';
import 'package:modul_4_homework_obidxon/ui_5/lib/pages/home_page.dart';
import 'package:modul_4_homework_obidxon/ui_5/lib/widget/reading_button.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/Bitmap.png'),
            fit: BoxFit.fill,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RichText(
              text: TextSpan(
                style: Theme.of(context).textTheme.displaySmall,
                children: const [
                  TextSpan(
                    text: 'flamin',
                  ),
                  TextSpan(
                    text: 'go',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: size.width * .6,
              child: ReadingButton(
                press: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return const HomePage();
                      },
                    ),
                  );
                },
                text: 'reading book',
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
