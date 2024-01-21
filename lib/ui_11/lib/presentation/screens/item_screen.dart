import 'package:flutter/material.dart';
import 'package:modul_4_homework_obidxon/ui_11/lib/components.dart';
import 'package:modul_4_homework_obidxon/ui_11/lib/presentation/screens/vegetables_screen.dart';
import 'package:modul_4_homework_obidxon/ui_11/lib/presentation/widgets/item_view.dart';

class ItemScreen extends StatelessWidget {
  const ItemScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          color: backroundColor,
          image: DecorationImage(
            fit: BoxFit.contain,
            alignment: Alignment.topCenter,
            image: AssetImage(
              'assets/ui_11/images/bostonLattuce.png',
            ),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 50),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return const VegeTablesScreen();
                      },
                    ),
                  );
                },
                child: const Icon(
                  Icons.arrow_back_ios,
                  color: textPrimaryColor,
                ),
              ),
            ),
            Padding(
                padding: EdgeInsets.only(
                  top: size.height * .2,
                  bottom: 20,
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TabPageSelectorIndicator(
                        backgroundColor: Colors.white,
                        borderColor: Colors.white,
                        size: 10,),
                    TabPageSelectorIndicator(
                        backgroundColor: Color.fromRGBO(255, 255, 255, 0.5),
                        borderColor: borderColor,
                        size: 10,),
                    TabPageSelectorIndicator(
                        backgroundColor: Color.fromRGBO(255, 255, 255, 0.5),
                        borderColor: borderColor,
                        size: 10,),
                  ],
                ),),
            Expanded(
              child: Container(
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Boston Lettuce',
                        style: sfProBold,
                      ),
                      const SizedBox(
                        height: 10
                      ),
                      RichText(
                        text: const TextSpan(
                          children: [
                            TextSpan(
                              text: '1.10 ',
                              style: TextStyle(
                                color: textPrimaryColor,
                                fontSize: 32,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            TextSpan(
                              text: '€ / piece',
                              style: TextStyle(
                                color: textScondaryColor,
                                fontSize: 24,
                              ),
                            )
                          ],
                        ),
                      ),
                      const Text(
                        '~ 150 gr / piece',
                        style: TextStyle(
                          color: Colors.green,
                          fontSize: 17,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(
                        height: 20
                      ),
                      Text(
                        'Spain',
                        style: sfProBold.copyWith(
                          fontSize: 22,
                        ),
                      ),
                      const Text(
                        'Lettuce is an annual plant of the daisy family, Asteraceae. It is most often grown as a leaf vegetable, but sometimes for its stem and seeds. Lettuce is most often used for salads, although it is also seen in other kinds of food, such as soups, sandwiches and wraps; it can also be grilled.',
                        maxLines: 8,
                        style: TextStyle(
                          color: textScondaryColor,
                          fontWeight: FontWeight.w400,
                          fontSize: 17,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ItemView(
                            icon: Icons.favorite_border,
                            colorIcon: Color.fromRGBO(
                              149,
                              134,
                              168,
                              1,
                            ),
                            verticalButton: 5,
                            horizontalButton: 20,
                            backroundColor: Colors.white,
                            isBorder: true,
                          ),
                          ItemView(
                            icon: Icons.shopping_cart,
                            colorIcon: Colors.white,
                            backroundColor: Colors.green,
                            horizontalButton: 50,
                            verticalButton: 5,
                            text: 'Add to Card',
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
