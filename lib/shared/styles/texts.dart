

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pety/shared/styles/colors.dart';
import 'package:pety/shared/styles/font_weights.dart';

class TextStyles {

  static TextStyle font15GreyRegular = TextStyle(
    color: ColorManager.grey,
    fontSize: 15.sp,
  );

  static TextStyle font12LightGreyRegular = TextStyle(
    color: ColorManager.lightGrey,
    fontSize: 12.sp,
  );


  static TextStyle font14GreyLight = TextStyle(
    color: ColorManager.hintOFSearchTextField,
    fontSize: 14.sp,
    fontWeight: FontWeightHelper.light,
  );

  static TextStyle font10WhiteRegular = TextStyle(
    color: Colors.white,
    fontSize: 10.sp,
  );

  static TextStyle font26WhiteMedium = TextStyle(
    color: Colors.white,
    fontSize: 26.sp,
    fontWeight: FontWeightHelper.medium
  );

  static TextStyle font14WhiteRegular = TextStyle(
      color: Colors.white,
      fontSize: 14.sp,
  );

  static TextStyle font13WhiteRegular= TextStyle(
    color: Colors.white,
    fontSize: 13.sp,
  );

  static TextStyle font14DefaultRegular = TextStyle(
    color: ColorManager.defaultColor,
    fontSize: 12.sp,
  );

  static TextStyle font8BlackLight = TextStyle(
    color: Colors.black,
    fontSize: 8.sp,
    fontWeight: FontWeightHelper.light,
  );

  static TextStyle font12BlackRegular = TextStyle(
    color: Colors.black,
    fontSize: 12.sp,
  );

  static TextStyle font16BlackRegular = TextStyle(
    color: Colors.black,
    fontSize: 16.sp,
  );

  static TextStyle font16BlackMedium = TextStyle(
    color: Colors.black,
    fontSize: 16.sp,
    fontWeight: FontWeightHelper.medium,
    height: 1.1
  );

  static TextStyle font16BlackBold = TextStyle(
    color: Colors.black,
    fontSize: 16.sp,
    fontWeight: FontWeightHelper.bold
  );

  static TextStyle font43BlackBold = TextStyle(
    color: Colors.black,
    fontSize: 43.sp,
  );

}