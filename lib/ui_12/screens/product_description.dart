import 'package:flutter/material.dart';
import 'package:modul_4_homework_obidxon/ui_12/compatations.dart';
import 'package:modul_4_homework_obidxon/ui_12/widget/bottom_nav_bar.dart';
import 'package:modul_4_homework_obidxon/ui_12/widget/button_add_card.dart';
import 'package:modul_4_homework_obidxon/ui_12/widget/person_circle.dart';
import 'package:modul_4_homework_obidxon/ui_12/widget/simple_line.dart';
import 'package:modul_4_homework_obidxon/ui_3/constants.dart';

class ProductDescriptionPage extends StatefulWidget {
  const ProductDescriptionPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _ProductDescriptionPageState createState() => _ProductDescriptionPageState();
}

class _ProductDescriptionPageState extends State<ProductDescriptionPage>
    with TickerProviderStateMixin {
  late TabController _controller;

  @override
  void initState() {
    super.initState();

    _controller = TabController(vsync: this, length: 3);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        // elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.menu,
            weight: 24,
            color: kBackColor,
          ),
        ),
        title: const Text(
          'bagzz',
        ),
        titleTextStyle: kPlayfairDisplay,
        actions: const [
          PersonCircle(),
        ],
      ),
      bottomNavigationBar: const BottomNavBar(),
      body: Padding(
        padding: const EdgeInsets.only(left: 12, right: 12, top: 30),
        child: Column(
          children: [
            const Align(
              alignment: Alignment.topRight,
              child: Icon(Icons.favorite_border),
            ),
            Row(
              children: [
                Image.asset(
                  'assets/ui_12/images/image1.png',
                  height: 155,
                  width: 170,
                  fit: BoxFit.fill,
                ),
                const SizedBox(
                  width: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Artsy',
                      style: kPlayfairDisplay,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Wallet with chain',
                      style: kWorkSansBlack.copyWith(
                        fontSize: 12,
                      ),
                    ),
                    Text(
                      'Style #36252 0YK0G 1000',
                      style: kWorkSansBlack.copyWith(
                          fontSize: 14, color: kBlackColor.withOpacity(.5)),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      '\$564',
                      style: kWorkSansBlack.copyWith(
                        fontWeight: FontWeight.w700,
                        fontSize: 20,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const ButtonAddCard(
                      title: 'Buy Now',
                      height: 30,
                      width: 97,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Add to cart'.toUpperCase(),
                      style: kWorkSansBlack.copyWith(
                        fontSize: 14,
                      ),
                    ),
                    const SimpleLine(
                      height: 2,
                      width: 94,
                      verticalMarjin: 5,
                    ),
                  ],
                )
              ],
            ),
            const SizedBox(
              height: 30
            ),
            DefaultTabController(
              length: 3,
              child: TabBar(
                controller: _controller,
                labelStyle: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
                indicatorColor: kBackColor,
                indicatorSize: TabBarIndicatorSize.label,
                labelPadding: const EdgeInsets.only(
                  left: 0,
                ),
                // dividerColor: Colors.amber,
                onTap: (index) {
                  setState(
                    () {},
                  );
                },
                labelColor: kBackColor,
                tabs: const [
                  Tab(
                    text: 'Description',
                  ),
                  Tab(text: 'Shipping info'),
                  Tab(
                    text: 'Payment options',
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 20, bottom: 10),
              width: double.infinity,
              height: 270,
              child: TabBarView(
                controller: _controller,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'As in handbags, the double ring and bar design defines the wallet shape, highlighting the front flap closure which is tucked inside the hardware. Completed with an organizational interior, the black leather wallet features a detachable chain.',
                        maxLines: 5,
                        style: kWorkSansBlack.copyWith(
                          letterSpacing: 1,
                          height: 1.3,
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          color: const Color.fromRGBO(91, 91, 91, 1),
                        ),
                      ),
                      
                      const Spacer(),
                      Text('Material & care',style: kWorkSansBlack.copyWith(
                          fontSize: 14,
                        ),),
                        const SizedBox(height: 10),
                      Text(
                        """
All products are made with carefully selected
materials.Please handle with care for longer
product life.
- Protect from direct light, heat and rain. Should it 
   become wet, dry it immediately with a soft cloth
- Store in the provided flannel bag or box
- Clean with a soft, dry cloth
""",
                      overflow: TextOverflow.ellipsis,
                        style: kWorkSansBlack.copyWith(
                          letterSpacing: 1,
                          height: 1.2,
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          color: const Color.fromRGBO(91, 91, 91, 1),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
"""
Pre-order, Made to Order and DIY items will ship
on the estimated date noted on the product
description page. These items will ship through 
Premium Express once they become available.
""",
                        maxLines: 5,
                        
                        style: kWorkSansBlack.copyWith(
                          height: 1.3,
                          overflow: TextOverflow.ellipsis,
                          letterSpacing: 1,
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          color: const Color.fromRGBO(91, 91, 91, 1),
                        ),
                      ),
                      // SizedBox(height: 30,),
                      const Spacer(),
                      Text('Return policy',style: kWorkSansBlack.copyWith(
                          fontSize: 14,
                        ),),
                        const SizedBox(height: 10,),
                      Text(
                        """
Returns may be made by mail or in store.The 
return window for online purchases is 30 days (10 
days in the case of beauty items) from the date of 
delivery. You may return products by mail using 
the complimentary prepaid return label included 
with your order, and following the return 
instructions provided in your digital invoice.
""",
                        style: kWorkSansBlack.copyWith(
                          overflow: TextOverflow.ellipsis,
                          letterSpacing: 1,
                          height: 1.3,
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          color: const Color.fromRGBO(91, 91, 91, 1),
                        ),
                      ),
                    ],
                  ),
                   Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
"""
We accepts the following forms of payment for online purchases:
""",
                        maxLines: 5,
                        style: kWorkSansBlack.copyWith(
                          overflow: TextOverflow.ellipsis,
                          letterSpacing: 1,
                          height: 1.3,
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          color: const Color.fromRGBO(91, 91, 91, 1),
                        ),
                      ),
                      Text(
"""
PayPal may not be used to purchase Made to 
Order Décor or DIY items.
""",
                        maxLines: 5,
                        style: kWorkSansBlack.copyWith(
                          overflow: TextOverflow.ellipsis,
                          letterSpacing: 1,
                          height: 1.3,
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          color: const Color.fromRGBO(91, 91, 91, 1),
                        ),
                      ),
                      
                        const SizedBox(height: 10),
                      Text(
                        """
The full transaction value will be charged to your 
credit card after we have verified your card 
details, received credit authorisation, confirmed availability and prepared your order for shipping. 
For Made To Order, DIY, personalised and selected 
Décor products, payment will be taken at the time 
the order is placed.
""",
                        maxLines: 7,
                        style: kWorkSansBlack.copyWith(
                          overflow: TextOverflow.ellipsis,
                          letterSpacing: 1,
                          
                          height: 1.3,
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          color: const Color.fromRGBO(91, 91, 91, 1),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            // const SizedBox(
            //   height: 20,
            // ),
          ],
        ),
      ),
    );
  }
}
