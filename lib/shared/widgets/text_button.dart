
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pety/shared/styles/colors.dart';
import 'package:pety/shared/styles/texts.dart';

Widget defaultTextButton ({
  required String text,
  Color? color,
  required Function() onClick,
}) => TextButton(
    onPressed: onClick,
    style: TextButton.styleFrom(
      padding: EdgeInsets.zero,
      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
      minimumSize: Size(60.w, 25.h),
      foregroundColor: color??ColorManager.defaultColor,
    ),
    child: Text(
      text,
      style: TextStyles.font12DefaultRegular.copyWith(
        color: color??ColorManager.defaultColor
      ),
    )
);