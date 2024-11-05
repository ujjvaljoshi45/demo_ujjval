import 'package:demo_ujjval/models/activities.dart';
import 'package:demo_ujjval/utils/colors.dart';
import 'package:demo_ujjval/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ActivityChips extends StatelessWidget {
  const ActivityChips({super.key, required this.activities});
  final List<Activity> activities;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        for (Activity activity in activities) _buildTagChip(activity.title, activity.image),
      ],
    );
  }

  Widget _buildTagChip(String label, String icon) => Chip(
        labelPadding: EdgeInsets.symmetric(horizontal: 2.w),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(6.r),
            side: BorderSide(
                color: const Color(
              0xFFEEEEEE,
            ).withOpacity(0.8))),
        backgroundColor: const Color(
          0xFFEEEEEE,
        ).withOpacity(0.8),
        avatar: Image.asset(
          icon,
          width: 12.w,
          height: 12.h,
        ),
        label: Text(
          label,
          style: AppStyles.poppins.copyWith(
            fontSize: 10.sp,
            fontWeight: FontWeight.w400,
            color: AppColors.black,
          ),
        ),
      );
}
