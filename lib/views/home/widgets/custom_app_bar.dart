import 'package:demo_ujjval/utils/colors.dart';
import 'package:demo_ujjval/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Image.asset(
                    "assets/sun.png",
                    width: 20.w,
                    height: 20.h,
                  ),
                  Text(
                    "GOOD MORNING",
                    style: AppStyles.poppins.copyWith(
                        fontSize: 12.sp, fontWeight: FontWeight.w500, color: AppColors.main),
                  )
                ],
              ),
              Text(
                "John Doe",
                style: AppStyles.poppins
                    .copyWith(fontSize: 24.sp, fontWeight: FontWeight.w500, color: AppColors.black),
              )
            ],
          ),
        ),
        CircleAvatar(
            radius: 32.r,
            backgroundColor: AppColors.main,
            child: CircleAvatar(
              backgroundImage: const AssetImage(
                "assets/dp.png",
              ),
              radius: 28.r,
            ))
      ],
    );
  }
}
