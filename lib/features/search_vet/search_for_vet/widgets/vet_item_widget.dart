
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pety/features/search_vet/search_for_vet/data/models/search_vets_response.dart';
import 'package:pety/shared/styles/colors.dart';
import 'package:pety/shared/styles/texts.dart';
import 'package:pety/shared/widgets/horizontal_space.dart';

class VetItemWidget extends StatelessWidget{

  final Data item;
  const VetItemWidget({
    super.key,
    required this.item
  });

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
                item.petyName!,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyles.font16BlackMedium,
              ),
              Row(
                children: [
                  RatingBarIndicator(
                    rating: item.averageRate!.toDouble(),
                    itemBuilder: (context,index) => const Icon(
                      Icons.star,
                      color: ColorManager.yellow,
                    ),
                    unratedColor: ColorManager.lightGrey2,
                    itemCount: 5,
                    itemSize: 25.r,
                  ),
                  const HorizontalSpace(width: 3),
                  Text('${item.averageRate!}',style: TextStyles.font12LightGreyRegular),
                ],
              ),
              Row(
                children: [
                  const Icon(
                    Icons.monetization_on_outlined,size: 18,color: ColorManager.defaultColor,
                  ),
                  SizedBox(width: 5.w,),
                  Text(
                    'Price ${item.price}',
                    style: TextStyles.font12LightGreyRegular,
                  )
                ],
              ),
              Row(
                children: [
                  SvgPicture.asset(
                    'assets/svgs/pet_leg.svg',
                    color: ColorManager.defaultColor,
                    height: 18,
                    width: 18,
                  ),
                  SizedBox(width: 5.w,),
                  Text(
                    item.animals==null?'':item.animals!.toString(),
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


}