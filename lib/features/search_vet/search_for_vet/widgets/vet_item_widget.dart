
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pety/shared/styles/colors.dart';
import 'package:pety/shared/styles/texts.dart';

class VetItemWidget extends StatelessWidget{

  const VetItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const CircleAvatar(
          radius: 35,
           backgroundImage: NetworkImage('https://qph.cf2.quoracdn.net/main-qimg-1a76949b7ad38ed534243bb32f6c4ea8-lq'),
        ),
        SizedBox(width: 8.w,),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Zeke Yeager',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyles.font16BlackMedium,
              ),
              Row(
                children: [
                  RatingBarIndicator(
                    rating: _calculateRating(),
                    itemBuilder: (context,index) => const Icon(
                      Icons.star,
                      color: ColorManager.yellow,
                    ),
                    unratedColor: ColorManager.lightGrey2,
                    itemCount: 5,
                    itemSize: 25.r,
                  ),
                  Text('(41)',style: TextStyles.font12LightGreyRegular),
                ],
              ),
              Row(
                children: [
                  const Icon(Icons.access_time,size: 18,color: ColorManager.defaultColor,),
                  SizedBox(width: 5.w,),
                  Text(
                    'Waiting time: 30 minutes',
                    style: TextStyles.font12LightGreyRegular,
                  )
                ],
              ),
              Row(
                children: [
                  const Icon(Icons.person,size: 18,color: ColorManager.defaultColor),
                  SizedBox(width: 5.w,),
                  Text(
                    'cats / dogs / birds',
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyles.font12LightGreyRegular,
                  )
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }

  double _calculateRating(){
    int have = 190;
    int dif = 41*5-have;
    if(dif<0)return 5;
    return 3;
  }

}