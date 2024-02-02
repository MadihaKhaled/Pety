
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pety/shared/styles/colors.dart';
import 'package:pety/shared/styles/texts.dart';

class KnowAboutCommunity extends StatelessWidget{
  const KnowAboutCommunity({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
        surfaceTintColor: Colors.white,
        elevation: 0,
        color: Colors.white,
        child:Padding(
          padding: EdgeInsets.all(8.w),
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
              SizedBox(
                height: 50.h,
                child: FilledButton.tonal(
                    onPressed: (){},
                    style: ButtonStyle(
                      padding: MaterialStatePropertyAll<EdgeInsets>(EdgeInsets.symmetric(horizontal: 5.w)),
                      backgroundColor: const MaterialStatePropertyAll<Color>(ColorManager.orange),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.r))),
                    ),

                    child: Text('community',style: TextStyles.font14WhiteRegular,)
                ),
              )
            ],
          ),
        )
    );
  }

}