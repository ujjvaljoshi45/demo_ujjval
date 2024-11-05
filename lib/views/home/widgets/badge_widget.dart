import 'package:demo_ujjval/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class BadgeWidget extends StatelessWidget {
  const BadgeWidget({super.key, required this.image, required this.text});
  final String image;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          Image.asset(
            image,
            height: 16.h,
            width: 16.w,
          ),
          const SizedBox(width: 4),
          Text(
            text,
            style: AppStyles.poppins.copyWith(
              color: Colors.black,
              fontSize: 10.sp,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}
