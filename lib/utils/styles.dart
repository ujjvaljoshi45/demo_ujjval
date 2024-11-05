import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'colors.dart';

abstract class AppStyles {
  static final TextStyle poppins = GoogleFonts.poppins(fontWeight: FontWeight.w400);
  static final TextStyle heading =
      poppins.copyWith(fontSize: 16.sp, fontWeight: FontWeight.w600, color: AppColors.black);
  static final TextStyle subtitle = poppins.copyWith(
    fontWeight: FontWeight.w500,
    fontSize: 13.sp,
    color: const Color(0xFF999999),
  );
}
