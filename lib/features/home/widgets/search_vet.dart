
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pety/shared/styles/colors.dart';
import 'package:pety/shared/styles/texts.dart';

class SearchVet extends StatelessWidget{

  const SearchVet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity.w,
      height: 60.h,
      padding: EdgeInsets.symmetric(horizontal: 8.w,vertical: 8.h),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(22),
          border: Border.all(width: 0.5,color: ColorManager.hintOFSearchTextField)

      ),
      child: Row(
        children: [
          const Icon(Icons.search,color: ColorManager.hintOFSearchTextField,),
          SizedBox(width: 5.w,),
          Expanded(
              child: TextFormField(
                decoration: InputDecoration.collapsed(
                  hintText: 'Book a vet appointment',
                  hintStyle: TextStyles.font14GreyLight,
                  border: InputBorder.none,
                ),
              )
          )
        ],
      ),
    );
  }

}