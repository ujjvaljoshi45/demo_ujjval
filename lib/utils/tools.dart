import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';

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

  static SizedBox defaultSize = SizedBox(height: 8.h);

  static void showToast(String message, {Color? textColor, Color? background}) => Fluttertoast.showToast(msg: message,backgroundColor: background,textColor: textColor,);
}