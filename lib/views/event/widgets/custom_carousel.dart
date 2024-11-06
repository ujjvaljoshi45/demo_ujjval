import 'package:carousel_slider/carousel_slider.dart';
import 'package:demo_ujjval/models/event.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyCustomCarouselSlider extends StatelessWidget {
  final Event event;
  const MyCustomCarouselSlider({super.key, required this.event});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      items: [
        for (String image in event.images)
          Image.asset(
            image,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
      ],
      options: CarouselOptions(
        autoPlay: true,
        viewportFraction: 1,
        aspectRatio: 16 / 9,
        height: 335.h,
      ),
    );
  }
}
