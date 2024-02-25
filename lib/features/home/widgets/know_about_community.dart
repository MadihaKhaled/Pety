
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pety/shared/styles/colors.dart';
import 'package:pety/shared/styles/texts.dart';
import 'package:pety/shared/widgets/default_button.dart';

class KnowAboutCommunity extends StatelessWidget{
  const KnowAboutCommunity({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
        surfaceTintColor: Colors.white,
        elevation: 0,
        color: Colors.white,
        child:Padding(
          padding: EdgeInsets.symmetric(horizontal:8.w,vertical: 8.h),
          child: Row(
            children: [
              SvgPicture.asset('assets/svgs/menu.svg'),
              SizedBox(width: 5.w,),
              Expanded(
                child: Column(
                  children: [
                    Text(
                      'Have a question\nabout pet caring?',
                      style: TextStyles.font16BlackBold,
                    ),
                    Text(
                      'ask our community of pet owners\nor check the FAQ',
                      style: TextStyles.font8BlackLight,
                    ),
                  ],
                ),
              ),
              SizedBox(width: 5.w,),
              DefaultButton(
                height: 50.h,
                width: 80.w,
                text: 'community',
                color: ColorManager.orange,
                textStyle: TextStyles.font14WhiteRegular,
                onClick: (){}
              )
            ],
          ),
        )
    );
  }

}