import 'package:demo_ujjval/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FilterRow extends StatelessWidget {
  const FilterRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildFilterOption('assets/pin.png', 'London'),
        _buildFilterOption('assets/calendar.png', '19 - 20 Sept'),
        _buildFilterOption('assets/category.png', 'Categories'),
      ],
    );
  }

  Widget _buildFilterOption(String imagePath, String label) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20.0.r),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Row(
        children: [
          Image.asset(
            imagePath,
            width: 14.w,
            height: 14.h,
          ),
          SizedBox(width: 3.0.w),
          Text(
            label,
            style: AppStyles.poppins.copyWith(
              fontSize: 12.0.sp,
              fontWeight: FontWeight.w500,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}