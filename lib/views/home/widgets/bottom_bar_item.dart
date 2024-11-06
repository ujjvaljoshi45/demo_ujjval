import 'package:demo_ujjval/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyBottomBarItem extends StatelessWidget {
  const MyBottomBarItem({super.key, required this.image, required this.text});
  final String image;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Expanded(child: Image.asset(image, height: 24.h, width: 24.w)),
        Text(
          text,
          style: AppStyles.poppins.copyWith(fontSize: 10.sp),
        )
      ],
    );
  }
}
