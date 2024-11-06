import 'package:demo_ujjval/models/guest_data.dart';
import 'package:demo_ujjval/utils/styles.dart';
import 'package:demo_ujjval/utils/tools.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GuestSlider extends StatelessWidget {
  const GuestSlider({super.key, required this.guests});
  final List<GuestData> guests;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 16.0),
        child: Row(
          children: [
            for (GuestData guest in guests)
              Container(
                width: 90.w,
                height: 110.h,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16.0.r),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.15),
                      blurRadius: 10.r,
                      offset: const Offset(0, 5),
                    ),
                  ],
                ),
                margin: EdgeInsets.symmetric(horizontal: 8.0.w),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage(guest.profileImage),
                      radius: 25.r,
                    ),
                    Tools.space8h,
                    Text(
                      guest.name,
                      softWrap: false,
                      overflow: TextOverflow.fade,
                      style:
                          AppStyles.poppins.copyWith(fontSize: 12.sp, fontWeight: FontWeight.w500),
                    )
                  ],
                ),
              ),
          ],
        ),
      ),
    );
  }
}
