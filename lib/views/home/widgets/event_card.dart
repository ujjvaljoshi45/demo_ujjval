import 'package:demo_ujjval/models/event.dart';
import 'package:demo_ujjval/utils/colors.dart';
import 'package:demo_ujjval/utils/tools.dart';
import 'package:demo_ujjval/views/home/widgets/activity_chips.dart';
import 'package:demo_ujjval/views/home/widgets/badge_widget.dart';
import 'package:demo_ujjval/views/home/widgets/info_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EventCard extends StatelessWidget {
  final Event data;
  const EventCard({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.r),
      ),
      elevation: 8,
      child: Padding(
        padding: EdgeInsets.all(12.0.r),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Event Image with Super User Badge
            _buildTitle(),
            Tools.space8h,
            // Event Title
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  data.title,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
                Tools.space8h,
                Row(
                  children: [
                    _buildPreviewImages(),
                    Text(
                      '\t+${data.guestCount}',
                      style: const TextStyle(
                        fontSize: 14,
                        color: Colors.black54,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Tools.space8h,
            // Venue
            InfoWidget(
              image: "assets/pin.png",
              text: data.addressData.address,
            ),
            Tools.space8h,
            // Date and Time
            InfoWidget(
              image: "assets/calender.png",
              text: "${data.date} | ${data.timeRange}",
            ),
            Tools.space8h,
            // Tags
            ActivityChips(
              activities: data.activities,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTitle() => Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(15.r),
            child: Image.asset(
              data.coverImage,
              height: 160,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            top: 8,
            right: 8,
            child: BadgeWidget(
              text: data.badge.title,
              image: data.badge.image,
            ),
          ),
        ],
      );
  Widget _buildPreviewImages() => Stack(
        children: [
          for (var i = 0; i < data.guestPreview.length; i++)
            Padding(
              padding: EdgeInsets.only(left: ((16.0 * i)).w),
              child: CircleAvatar(
                radius: 14.r,
                backgroundColor: AppColors.white,
                child: CircleAvatar(
                  radius: 12.r,
                  backgroundImage: AssetImage(data.guestPreview[i].profileImage),
                ),
              ),
            ),
        ],
      );
}
