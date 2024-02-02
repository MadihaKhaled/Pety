
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pety/features/search_vet/search_for_vet/vet_item_widget.dart';
import 'package:pety/shared/styles/colors.dart';
import 'package:pety/shared/widgets/default_search.dart';

class SearchForVet extends StatelessWidget{
  const SearchForVet({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.w,vertical: 10.h),
        child: Column(
          children: [
            const DefaultSearch(),
            SizedBox(height: 20.h,),
            Expanded(
              child: ListView.separated(
                physics: const BouncingScrollPhysics(),
                itemBuilder: (context,index) => const VetItemWidget(),
                separatorBuilder: (context,index) => const Divider(thickness: 1,color: ColorManager.dashLineColor,),
                itemCount: 12
              ),
            )
          ],
        ),
      ),
    );
  }

}