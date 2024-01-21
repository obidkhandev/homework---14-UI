import 'package:flutter/material.dart';
import 'package:modul_4_homework_obidxon/ui_14/compotations.dart';
import 'package:modul_4_homework_obidxon/ui_14/pages/message/chat_card.dart';
import 'package:modul_4_homework_obidxon/ui_14/pages/message/chats_screen.dart';
import 'package:modul_4_homework_obidxon/ui_14/pages/sing/compotations/email_field_container.dart';
import 'package:modul_4_homework_obidxon/ui_14/widget/circle_button.dart';
import 'package:modul_4_homework_obidxon/ui_14/widget/my_app_bar2.dart';

class MessageScreen extends StatelessWidget {
  const MessageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20, top: 56),
        child: Column(
          children: [
            const MyAppBar2(
              title: "Messages",
              child: CircleSmallButtonUi14(
                backgroundColor: kLightGrayColor,
                icon: Icons.menu,
                // iconSize: 24,
                height: 44,
                width: 44,
                iconColor: kTextColorUi14,
              ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Messages",
                  style:
                      kSfUiSytle.copyWith(fontSize: 20, color: kTextColorUi14),
                ),
                Image.asset("assets/ui_14/images/edit.png"),
              ],
            ),
            EmailFieldContainer(
              child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Search for chats & messages",
                  hintStyle: kSfUiSytle.copyWith(fontSize: 16),
                  icon: const Icon(
                    Icons.search_rounded,
                    color: kSubTextColorUi14,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            ChatCard(
              image: "assets/ui_14/images/Ellipse 899.png",
              time: "09:46",
              iconColor: kSubTextColorUi14,
              personName: "Sajib  Rahman",
              text: "Hi, John! 👋 How are you doing?",
              onlineColor: Colors.amber,
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return const ChatsScreen();
                    },
                  ),
                );
              },
            ),
            const ChatCard(
              image: "assets/ui_14/images/Ellipse 901.png",
              time: "08:42",
              iconColor: Colors.green,
              personName: "Adom Shafi",
              text: "Typing...",
              textColor: kPrimaryColorUi14,
              onlineColor: kSubTextColorUi14,
              isRead: true,
            ),
            const ChatCard(
              image: "assets/ui_14/images/Ellipse 897.png",
              time: "Yesterday",
              iconColor: kSubTextColorUi14,
              personName: "HR Rumen",
              text: "You: Cool! ☺️ Let’s meet at 18:00\n near the traveling!",
              onlineColor: Colors.green,
              isRead: true,
            ),
            const ChatCard(
              image: "assets/ui_14/images/Ellipse 901 (1).png",
              time: "07:56",
              iconColor: kSubTextColorUi14,
              personName: "Anjelina",
              text: "You: Hey, will you come to the party on Saturday?",
              onlineColor: Colors.red,
              // isRead: true,
            ),
            const ChatCard(
              image: "assets/ui_14/images/Ellipse 903.png",
              time: "05:52",
              iconColor: Colors.green,
              personName: "Alexa Shorna",
              text: "Thank you for coming! Your or...",
              onlineColor: Colors.green,
              isRead: true,
            ),
          ],
        ),
      ),
    );
  }
}
