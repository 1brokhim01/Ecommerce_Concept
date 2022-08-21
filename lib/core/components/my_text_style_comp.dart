import 'package:ecommerce/core/constants/colors_const.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyTextStyleComp {
  static textStyle({
    double size = 14,
    color,
    fontF = "Mark Pro",
    fontW = FontWeight.normal,
    fontS = FontStyle.normal,
    double h = 1,
  }) {
    return TextStyle(
      fontSize: size.sp,
      color: color ?? ColorsConst.color010035,
      fontFamily: fontF,
      fontWeight: fontW,
      fontStyle: fontS,
      height: h.h,
    );
  }
}
