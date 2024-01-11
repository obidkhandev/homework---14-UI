import 'package:flutter/material.dart';
import 'package:modul_4_homework_obidxon/ui_12/compatations.dart';
import 'package:modul_4_homework_obidxon/ui_3/constants.dart';

class HomePageUi12 extends StatelessWidget {
  const HomePageUi12({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        margin: EdgeInsets.only(left: 12,right: 12),
        height: 65,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(69),
          boxShadow: [
            BoxShadow(
              offset: Offset(0, 14),
              blurRadius: 56,
              color: Color.fromRGBO(0, 0, 0, 0.14),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(onPressed: (){}, icon: Icon(Icons.home_filled),),
            IconButton(onPressed: (){}, icon: Icon(Icons.search,),),
            IconButton(onPressed: (){}, icon: Icon(Icons.shopping_bag,),),
            IconButton(onPressed: (){}, icon: Icon(Icons.favorite,),),

          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.menu,
            weight: 24,
            color: kBackColor,
          ),
        ),
        title: Text(
          'bagzz',
        ),
        titleTextStyle: kPlayfairDisplay,
        actions: [
          Container(
            height: 32,
            width: 32,
            margin: EdgeInsets.only(
              right: 12,
            ),
            decoration: BoxDecoration(
                color: kBackColor,
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage('assets/ui_12/images/Ellipse 3 (1).png'),
                )),
          ),
        ],
      ),
      body: ListView(
        children: [
          Column(
            children: [
              SizedBox(
                height: 220,
                width: double.infinity,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 2,
                  shrinkWrap: true,
                  padding: EdgeInsets.only( right: 12, top: 20),
                  itemBuilder: (context, index) {
                    return Container(
                      height: 205,
                      width: 380,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        image: DecorationImage(
                          image: AssetImage(
                            'assets/ui_12/images/Group 58 (1).png',
                          ),
                          fit: BoxFit.fill,
                        ),
                      ),
                    );
                  },
                ),
              ),
              SizedBox(
                height: 20,
              ),
              GridView.builder(
                padding: EdgeInsets.only(left: 12, right: 12),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 15,
                  crossAxisSpacing: 15,
                ),
                shrinkWrap: true,
                itemCount: 4,
                physics: BouncingScrollPhysics(),
                itemBuilder: (context, index) {
                  return Container(
                    padding: EdgeInsets.all(5),
                    height: 230,
                    width: 170,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(241, 241, 241, 1),
                    ),
                    child: Column(
                      children: [
                        Align(
                          alignment: Alignment.topRight,
                          child: Icon(
                            Icons.favorite_border,
                            size: 16,
                          ),
                        ),
                        Image.asset(
                          'assets/ui_12/images/image${index + 1}.png',
                          height: 100,
                          width: 100,
                        ),
                        if (index == 0)
                          Text(
                            'Artsy',
                            style: kPlayfairDisplay.copyWith(fontSize: 18),
                          ),
                        if (index == 1)
                          Text(
                            'Berkely',
                            style: kPlayfairDisplay.copyWith(fontSize: 18),
                          ),
                        if (index == 2)
                          Text(
                            'Capucinus',
                            style: kPlayfairDisplay.copyWith(fontSize: 18),
                          ),
                        if (index == 3)
                          Text(
                            'Monogram',
                            style: kPlayfairDisplay.copyWith(fontSize: 18),
                          ),
                        SizedBox(height: 10,),
                        Text(
                          'Buy Now'.toUpperCase(),
                          style: kWorkSansBlack,
                        ),
                        
                        Container(height: 2, width: 88, color: kBackColor),
                      ],
                    ),
                  );
                },
              ),
              SizedBox(height: 20,),
              Container(
                padding: EdgeInsets.symmetric(vertical: 5,),
                height: 35,
                width: 184,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: kBackColor),
                ),
                child: GestureDetector(
                  onTap: (){},
                  child: Text('Check all latest',textAlign: TextAlign.center,style: kWorkSansBlack.copyWith(fontSize: 16,fontWeight: FontWeight.w500,),)),
              ),
              SizedBox(height: 40,),
            ],
          ),
        ],
      ),
    );
  }
}
