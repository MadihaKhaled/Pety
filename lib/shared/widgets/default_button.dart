
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pety/shared/styles/colors.dart';
import 'package:pety/shared/styles/texts.dart';


class DefaultButton extends StatelessWidget{

  final String text;
  final Function() onClick;
  final Color? color;
  final double? width;
  final double? height;
  final double? radius;
  final TextStyle? textStyle;

  const DefaultButton({
    super.key,
    required this.text,
    required this.onClick,
    this.color,
    this.width,
    this.height,
    this.radius,
    this.textStyle,
  });

  @override
  Widget build(BuildContext context) {
    //padding: MaterialStatePropertyAll<EdgeInsets>(EdgeInsets.symmetric(horizontal: 5.w)),
    return SizedBox(
      height: height??60.h,
      width: width??200.w,

      child: IconButton(
          onPressed: onClick,
          padding: EdgeInsets.zero,
          style: ButtonStyle(
              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
              backgroundColor: MaterialStatePropertyAll<Color>(color??ColorManager.defaultColor),
              shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(radius??10)))
          ),
          icon: Text(
            text,
            style: textStyle??TextStyles.font26WhiteMedium
          )
      ),
    );
  }

}
