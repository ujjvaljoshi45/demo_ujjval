import 'package:demo_ujjval/utils/colors.dart';
import 'package:demo_ujjval/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AlertInfoWidget extends StatelessWidget {
  const AlertInfoWidget({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.main, width: 3),
        borderRadius: BorderRadius.circular(20.r),
      ),
      padding: EdgeInsets.symmetric(vertical: 9.h, horizontal: 20.w),
      child: Row(
        children: [
          Image.asset(
            "assets/info.png",
            height: 30.h,
            width: 30.w,
          ),
          SizedBox(
            width: 10.w,
          ),
          Expanded(
            child: Column(
              children: [
                Text(
                  text,
                  softWrap: true,
                  style: AppStyles.poppins.copyWith(
                      color: AppColors.main, fontSize: 12.sp, fontWeight: FontWeight.w500),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
