
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pety/layouts/pety_layout/cubit/pety_layout_cubit.dart';
import 'package:pety/shared/extensions.dart';
import 'package:pety/shared/routing/routes.dart';
import 'package:pety/shared/styles/colors.dart';

class JobItemWidget extends StatelessWidget{

  final JobListItem model;
  const JobItemWidget({
    super.key,
    required this.model
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: 120.w,
          height: 120.h,
          child: Card(
            elevation: 0,
            //surfaceTintColor: Colors.white,
            color: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            child: InkWell(
                onTap: (){
                  context.pushNamed(Routes.searchForVet);
                },
                borderRadius: BorderRadius.circular(20),
                splashColor: ColorManager.defaultColor,
                child: Center(child: Image(image: AssetImage(model.image),height: 80.h,width: 80.w,))
            ),
          ),
        ),

        Text(model.title)
      ],
    );
  }

}