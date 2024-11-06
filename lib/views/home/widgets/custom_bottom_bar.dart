import 'package:demo_ujjval/views/home/widgets/bottom_bar_item.dart';
import 'package:flutter/material.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      shape: const CircularNotchedRectangle(),
      notchMargin: 8.0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          IconButton(
            icon: const MyBottomBarItem(image: "assets/calendar.png", text: "Calender"),
            onPressed: () {},
          ),
          IconButton(
            icon: const MyBottomBarItem(image: "assets/book.png", text: "Bookmark"),
            onPressed: () {},
          ),
          IconButton(
            icon: const MyBottomBarItem(image: "assets/notification.png", text: "Notification"),
            onPressed: () {},
          ),
          IconButton(
            icon: const MyBottomBarItem(image: "assets/sms.png", text: "Chats"),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
