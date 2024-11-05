import 'package:carousel_slider/carousel_slider.dart';
import 'package:demo_ujjval/main.dart';
import 'package:demo_ujjval/models/event.dart';
import 'package:demo_ujjval/utils/colors.dart';
import 'package:demo_ujjval/utils/styles.dart';
import 'package:demo_ujjval/utils/tools.dart';
import 'package:demo_ujjval/views/home/widgets/activity_chips.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:latlong2/latlong.dart';

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
                      fit: BoxFit.fitWidth,
                    ),
                ],
                    options: CarouselOptions(
                      autoPlay: true,
                      enlargeCenterPage: true,
                    ))),
            leading: IconButton(
              icon: const Icon(
                Icons.arrow_back,
                color: AppColors.white,
              ),
              onPressed: () => Get.back(),
            ),
            actions: [
              IconButton(
                icon: const Icon(Icons.more_horiz_rounded, color: AppColors.white),
                onPressed: () {

                },
              ),
            ],
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30.r),
                    topRight: Radius.circular(30.r),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                const Text("Building Name"),
                                Text(event.title),
                                Text("Starting ${event.startTime}"),
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
                                    text: TextSpan(
                                        style: AppStyles.poppins
                                            .copyWith(fontWeight: FontWeight.w500, fontSize: 16.sp),
                                        children: const [
                                          TextSpan(text: "Dec\n"),
                                          TextSpan(text: "24")
                                        ])),
                              ),
                            )
                          ],
                        ),
                        Tools.defaultSize,
                        RichText(
                            text: TextSpan(
                                style: AppStyles.poppins.copyWith(color: AppColors.black),
                                children: [
                              const TextSpan(text: "Description\n"),
                              TextSpan(text: event.description),
                            ])),
                        ActivityChips(activities: event.activities),
                        // Column(children: [
                        //   SizedBox(
                        //     child: Row(
                        //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        //       children: [
                        //       const Text("Guests"),
                        //       Text(event.guestCount.toString()),
                        //     ],),
                        //     height: 10.h,
                        //   ),
                        //   Flexible(child: ListView.builder(itemBuilder: (context, index) => Text(event.guestPreview[index].name),itemCount: event.guestPreview.length,),),
                        // ],),
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(color: AppColors.main, width: 3),
                            borderRadius: BorderRadius.circular(12.r),
                          ),
                          padding: EdgeInsets.all(4.r),
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
                                      event.info,
                                      softWrap: true,
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        Tools.defaultSize,
                        Align(
                          alignment: Alignment.centerLeft,
                          child: RichText(
                              text: TextSpan(
                                  style: AppStyles.poppins.copyWith(color: AppColors.black),
                                  children: [
                                TextSpan(text: "Location\n"),
                                TextSpan(text: event.addressData.address),
                              ])),
                        ),
                        // FlutterMap(
                        //   mapController: MapController(),
                        //   options: MapOptions(
                        //     initialCenter: LatLng(event.addressData.latitude, event.addressData.longitude),
                        //     minZoom: 3.2,
                        //   ),
                        //   children: [
                        //     TileLayer(
                        //       urlTemplate:
                        //           'https://tile.openstreetmap.org/0/0/0.png',
                        //       userAgentPackageName: 'com.example.app',
                        //     ),
                        //   ],
                        // ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
