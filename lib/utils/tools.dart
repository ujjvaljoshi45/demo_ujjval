import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

abstract class Tools {
  static double getHeight(BuildContext context) =>
      MediaQuery
          .of(context)
          .size
          .height
          .h;

  static double getWidth(BuildContext context) =>
      MediaQuery
          .of(context)
          .size
          .width
          .w;

  static double getBtmInsets(BuildContext context) =>
      MediaQuery
          .of(context)
          .viewInsets
          .bottom;
}