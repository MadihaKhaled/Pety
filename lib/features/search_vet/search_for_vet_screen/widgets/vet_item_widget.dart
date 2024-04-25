
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pety/features/search_vet/cubit/search_vet_cubit.dart';
import 'package:pety/features/search_vet/data/models/search_vets_response.dart';
import 'package:pety/shared/styles/colors.dart';
import 'package:pety/shared/styles/texts.dart';
import 'package:pety/shared/widgets/default_rating_indicator.dart';
import 'package:pety/shared/widgets/horizontal_space.dart';

class VetItemWidget extends StatelessWidget{

  final Data item;
  const VetItemWidget({
    super.key,
    required this.item,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        context.read<SearchVetCubit>().moveToVetDetails(item, context);
      },
      borderRadius: BorderRadius.circular(35),
      child: Row(
        children: [
          CircleAvatar(
            radius: 35,
             backgroundImage: vetImage(item.photo?.url),
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
                    DefaultRatingIndicator(rate: item.ratingsAverage!.toDouble()),
                    const HorizontalSpace(width: 3),
                    Text('${item.ratingsAverage!}',style: TextStyles.font12LightGreyRegular),
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
      ),
    );
  }

  ImageProvider vetImage(String? image){
    if(image!=null){
      return NetworkImage(image);
    }
    return const AssetImage('assets/images/default_vet_image.jpg');
  }

}