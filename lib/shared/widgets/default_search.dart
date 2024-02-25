
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pety/shared/styles/colors.dart';
import 'package:pety/shared/styles/texts.dart';
import 'package:pety/shared/widgets/horizontal_space.dart';

class DefaultSearch extends StatelessWidget{

  final String? text;
  final Function? showFilters;
  final TextEditingController controller;
  final Function(String)? onSubmit;
  const DefaultSearch({
    super.key,
    required this.controller,
    this.text,
    this.showFilters,
    this.onSubmit,
  });

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
          const HorizontalSpace(width: 5),
          Expanded(
              child: TextFormField(
                controller: controller,
                decoration: InputDecoration.collapsed(
                  hintText: text??'',
                  hintStyle: TextStyles.font14GreyLight,
                  border: InputBorder.none,
                ),
                onFieldSubmitted: onSubmit,
              )
          ),
          const HorizontalSpace(width: 5),
          if(showFilters!=null)
            IconButton(
              onPressed: (){
                showFilters!();
              },
              padding: EdgeInsets.zero,
              style: const ButtonStyle(
                tapTargetSize: MaterialTapTargetSize.shrinkWrap,
              ),
              icon: Image(
                image: const AssetImage('assets/images/search_filter.png'),
                width: 30.w,
                height: 30.h,
              ),
            )
        ],
      ),
    );
  }

}