import 'package:demo_ujjval/models/event.dart';
import 'package:demo_ujjval/utils/colors.dart';
import 'package:demo_ujjval/utils/styles.dart';
import 'package:demo_ujjval/utils/tools.dart';
import 'package:demo_ujjval/views/event/widgets/alert_info_widget.dart';
import 'package:demo_ujjval/views/event/widgets/guest_slider.dart';
import 'package:demo_ujjval/views/event/widgets/map_widget.dart';
import 'package:demo_ujjval/views/home/widgets/activity_chips.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:readmore/readmore.dart';

class MyDraggableSheet extends StatelessWidget {
  const MyDraggableSheet({super.key, required this.event});
  final Event event;

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      initialChildSize: 0.5,
      minChildSize: 0.5,
      maxChildSize: 1.0,
      builder: (context, scrollController) {
        return Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.vertical(top: Radius.circular(30.r)),
          ),
          child: SingleChildScrollView(
            controller: scrollController,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 12.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 16.h),
                  _buildTitleWidget(),
                  Tools.space16h,
                  Text("Description", style: AppStyles.heading),
                  ReadMoreText(
                    event.description,
                    style: AppStyles.subtitle,
                    trimLength: 120,
                    isExpandable: true,
                  ),
                  Tools.space16h,
                  ActivityChips(activities: event.activities),
                  Tools.space16h,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Guests", style: AppStyles.heading),
                      Text(
                        event.guestCount.toString(),
                        style: AppStyles.heading.copyWith(
                          color: AppColors.main,
                        ),
                      ),
                    ],
                  ),
                  Tools.space16h,
                  GuestSlider(guests: event.guestPreview),
                  Tools.space16h,
                  AlertInfoWidget(text: event.info),
                  Tools.space16h,
                  Align(
                    alignment: Alignment.centerLeft,
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "Location\n",
                            style: AppStyles.heading,
                          ),
                          TextSpan(
                            text: event.addressData.address,
                            style: AppStyles.subtitle,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Tools.space16h,
                  SizedBox(
                    height: 200.h,
                    width: double.infinity,
                    child: MapWidget(
                      latitude: event.addressData.latitude,
                      longitude: event.addressData.longitude,
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  Widget _buildTitleWidget() => Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                "Building Name",
                style: AppStyles.subtitle,
              ),
              Tools.space4h,
              Text(
                event.title,
                style: AppStyles.poppins.copyWith(fontWeight: FontWeight.w600, fontSize: 19.sp),
              ),
              Tools.space4h,
              Text(
                "Starting ${event.startTime}",
                style: AppStyles.subtitle,
              ),
            ],
          ),
          Container(
            height: 60.h,
            width: 60.h,
            decoration: BoxDecoration(
              color: AppColors.main,
              borderRadius: BorderRadius.circular(24.r),
            ),
            child: Center(
              child: RichText(
                  softWrap: true,
                  text: TextSpan(children: [
                    TextSpan(
                        text: "Dec\n",
                        style: AppStyles.poppins
                            .copyWith(fontSize: 15.sp, fontWeight: FontWeight.w500)),
                    TextSpan(
                        text: "24",
                        style: AppStyles.poppins
                            .copyWith(fontSize: 19.sp, fontWeight: FontWeight.w600))
                  ])),
            ),
          )
        ],
      );
}
