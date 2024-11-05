import 'package:carousel_slider/carousel_slider.dart';
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
import 'package:get/get.dart';
import 'package:readmore/readmore.dart';

class EventScreen extends StatelessWidget {
  const EventScreen({super.key, required this.event});
  final Event event;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 300.0,
            pinned: false,
            flexibleSpace: FlexibleSpaceBar(
              background: CarouselSlider(
                items: [
                  for (String image in event.images)
                    Image.asset(
                      image,
                      width: double.infinity.w,
                      fit: BoxFit.cover,
                    ),
                ],
                options: CarouselOptions(
                    autoPlay: true,
                    // enlargeCenterPage: true,
                    viewportFraction: 1,
                    aspectRatio: 16 / 9,
                    height: 250.h),
              ),
            ),
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
                    borderRadius: BorderRadius.circular(9.r)),
                child: const Icon(Icons.more_horiz_rounded),
              ),
              SizedBox(
                width: 4.w,
              ),
            ],
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12.w),
                  child: Column(
                    children: [
                      _buildTitleWidget(),
                      Tools.space16h,
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Text("Description", style: AppStyles.heading)),
                      ReadMoreText(
                        event.description,
                        style: AppStyles.subtitle,
                        trimLength: 120,
                        isExpandable: true,
                      ),
                      Tools.space16h,
                      ActivityChips(activities: event.activities),
                      Tools.space16h,
                      // Guest Slider Heading
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Guests", style: AppStyles.heading),
                          Text(
                            event.guestCount.toString(),
                            style: AppStyles.heading
                                .copyWith(color: AppColors.main),
                          ),
                        ],
                      ),
                      Tools.space16h,
                      GuestSlider(
                        guests: event.guestPreview,
                      ),
                      Tools.space16h,

                      AlertInfoWidget(
                        text: event.info,
                      ),
                      Tools.space16h,
                      Align(
                        alignment: Alignment.centerLeft,
                        child: RichText(
                            text: TextSpan(children: [
                          TextSpan(
                              text: "Location\n", style: AppStyles.heading),
                          TextSpan(
                              text: event.addressData.address,
                              style: AppStyles.subtitle),
                        ])),
                      ),
                      Tools.space16h,
                      SizedBox(
                          height: 200.h,
                          width: double.infinity.w,
                          child: MapWidget(
                            latitude: event.addressData.latitude,
                            longitude: event.addressData.longitude,
                          )),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: _buildBottomBar(),
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
                style: AppStyles.poppins
                    .copyWith(fontWeight: FontWeight.w600, fontSize: 19.sp),
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
                        style: AppStyles.poppins.copyWith(
                            fontSize: 15.sp, fontWeight: FontWeight.w500)),
                    TextSpan(
                        text: "24",
                        style: AppStyles.poppins.copyWith(
                            fontSize: 19.sp, fontWeight: FontWeight.w600))
                  ])),
            ),
          )
        ],
      );

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
                      fixedSize:
                          WidgetStatePropertyAll(Size(50.h, double.infinity)),
                      shape: WidgetStatePropertyAll(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12.r)),
                      ),
                      backgroundColor:
                          const WidgetStatePropertyAll(AppColors.main)),
                  child: Text(
                    "Join Now",
                    style: AppStyles.poppins.copyWith(
                        fontWeight: FontWeight.w600,
                        fontSize: 19.sp,
                        color: AppColors.white),
                  ),
                ),
              )
            ],
          ),
        ),
      );
}

