import 'package:demo_ujjval/models/event.dart';
import 'package:demo_ujjval/utils/colors.dart';
import 'package:demo_ujjval/utils/styles.dart';
import 'package:demo_ujjval/views/event/widgets/custom_carousel.dart';
import 'package:demo_ujjval/views/event/widgets/my_draggable_sheet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class EventScreen extends StatelessWidget {
  const EventScreen({super.key, required this.event});
  final Event event;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: AppColors.white,
          ),
          onPressed: () => Get.back(),
        ),
        actions: [
          MaterialButton(
            onPressed: () {},
            color: AppColors.white,
            elevation: 1.3,
            height: 40.h,
            minWidth: 40.h,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(9.r),
            ),
            child: const Icon(Icons.more_horiz_rounded),
          ),
          SizedBox(width: 4.w),
        ],
      ),
      body: Stack(
        children: [
          MyCustomCarouselSlider(event: event),
          MyDraggableSheet(event: event),
        ],
      ),
      bottomNavigationBar: _buildBottomBar(),
    );
  }

  Widget _buildBottomBar() => SizedBox(
        height: 60.h,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 12.0.w),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              MaterialButton(
                onPressed: () {},
                color: AppColors.white,
                elevation: 1.3,
                height: 40.h,
                minWidth: 40.h,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.r),
                    side: const BorderSide(color: AppColors.main)),
                child: Image.asset(
                  "assets/notif.png",
                  height: 40.0.h,
                  width: 40.0.w,
                ),
              ),
              SizedBox(
                width: 10.w,
              ),
              Expanded(
                child: ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                      fixedSize: WidgetStatePropertyAll(Size(50.h, double.infinity)),
                      shape: WidgetStatePropertyAll(
                        RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.r)),
                      ),
                      backgroundColor: const WidgetStatePropertyAll(AppColors.main)),
                  child: Text(
                    "Join Now",
                    style: AppStyles.poppins.copyWith(
                        fontWeight: FontWeight.w600, fontSize: 19.sp, color: AppColors.white),
                  ),
                ),
              )
            ],
          ),
        ),
      );
}
