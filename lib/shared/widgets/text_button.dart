
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pety/shared/styles/texts.dart';

Widget defaultTextButton ({
  required String text,
  required Function() onClick,
}) => TextButton(
    onPressed: onClick,
    style: TextButton.styleFrom(
      padding: EdgeInsets.zero,
      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
      minimumSize: Size(60.w, 25.h),
    ),
    child: Text(
      text,
      style: TextStyles.font12DefaultRegular,
    )
);