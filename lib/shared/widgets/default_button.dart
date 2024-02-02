
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pety/shared/styles/colors.dart';
import 'package:pety/shared/styles/texts.dart';


class DefaultButton extends StatelessWidget{

  final BuildContext context;
  final String text;
  final Function() onClick;
  final Color? color;
  final double? width;
  final double? height;
  final double? radius;

  const DefaultButton({
    super.key,
    required this.context,
    required this.text,
    required this.onClick,
    this.color,
    this.width,
    this.height,
    this.radius
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(radius??10),
      onTap: onClick,
      child: Ink(
          width: width??195.w,
          height: height??60.h,
          decoration: BoxDecoration(
            color: color??ColorManager.defaultColor,
            borderRadius: BorderRadius.circular(radius??10),
          ),
          child: Center(
            child: Text(
                text,
                style: TextStyles.font26WhiteMedium
            ),
          )
      ),
    );
  }

}
