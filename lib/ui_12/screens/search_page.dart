import 'package:flutter/material.dart';
import 'package:modul_4_homework_obidxon/ui_12/compatations.dart';
import 'package:modul_4_homework_obidxon/ui_12/widget/person_circle.dart';
import 'package:modul_4_homework_obidxon/ui_3/constants.dart';

class SearchPage extends StatefulWidget {
  SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          PersonCircle(),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.only(
          left: 12,
          right: 12,
          top: 30,
        ),
        child: Column(
          children: [
            Align(
              alignment: Alignment.topRight,
              child: Icon(Icons.clear),
            ),
            Container(
              child: Row(
                children: [
                  const SizedBox(width: 8),
                  Expanded(
                    child: TextField(
                      controller: _controller,
                      decoration: InputDecoration(
                        hintText: 'Type here to search',
                        hintStyle: kWorkSansBlack.copyWith(
                          fontSize: 21,
                          fontWeight: FontWeight.w400,
                          color: kBackColor.withOpacity(.5),
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: kBackColor),
                        ),
                      ),
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      _controller.clear();
                    },
                    icon: Icon(
                      Icons.clear,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
