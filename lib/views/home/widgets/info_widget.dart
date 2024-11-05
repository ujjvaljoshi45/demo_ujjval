import 'package:demo_ujjval/utils/colors.dart';
import 'package:demo_ujjval/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class InfoWidget extends StatelessWidget {
  final String image;
  final String text;
  const InfoWidget({super.key, required this.image, required this.text});
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          image,
          height: 14.h,
          width: 14.w,
          color: AppColors.main,
        ),
        SizedBox(
          width: 4.w,
        ),
        Text(
          text,
          style: AppStyles.poppins.copyWith(
            fontSize: 12.sp,
            color: AppColors.main,
          ),
        ),
      ],
    );
  }
}