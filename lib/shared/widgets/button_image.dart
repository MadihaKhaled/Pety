
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pety/shared/styles/colors.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ButtonImage extends StatelessWidget{

  final BuildContext context;
  final String imagePath;
  final Function() onClick;
  final Color? color;
  final double? width;
  final double? height;
  final double? radius;

  const ButtonImage({
    super.key,
    required this.context,
    required this.imagePath,
    required this.onClick,
    this.color,
    this.width,
    this.height,
    this.radius,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(radius??15),
      onTap: onClick,
      child: Ink(
          width: width??115.w,
          height: height??50.h,
          decoration: BoxDecoration(
            color: color??ColorManager.defaultColor,
            borderRadius: BorderRadius.circular(radius??15),
          ),
          child: Center(
            child: SizedBox(
              width: 31.w,
              height: 31.h,
              child: SvgPicture.asset(
                imagePath,
              ),
            ),
          )
      ),
    );
  }

}


