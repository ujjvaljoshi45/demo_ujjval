import 'package:demo_ujjval/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


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

class MyBottomBarItem extends StatelessWidget {
  const MyBottomBarItem({super.key, required this.image, required this.text});
  final String image;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Expanded(child: Image.asset(image)),
        Text(
          text,
          style: AppStyles.poppins.copyWith(fontSize: 10.sp),
        )
      ],
    );
  }
}
