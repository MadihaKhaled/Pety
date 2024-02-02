
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pety/layouts/pety_layout/cubit/pety_layout_cubit.dart';

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
          height: 120.h,
          width: 120.w,
          child: Card(
            elevation: 0,
            //surfaceTintColor: Colors.white,
            color: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            child: Center(child: Image(image: AssetImage(model.image),height: 80.h,width: 80.w,)),
          ),
        ),

        Text(model.title)
      ],
    );
  }

}