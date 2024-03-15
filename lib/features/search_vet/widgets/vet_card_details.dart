
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pety/features/search_vet/cubit/search_vet_cubit.dart';
import 'package:pety/shared/styles/texts.dart';
import 'package:pety/shared/widgets/default_rating_indicator.dart';
import 'package:pety/shared/widgets/horizontal_space.dart';

class VetCardDetails extends StatelessWidget{
  const VetCardDetails({super.key});

  @override
  Widget build(BuildContext context) {

    SearchVetCubit cubit = context.read<SearchVetCubit>();
    return SizedBox(
      width: double.infinity,
      height: 100.h,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.network(
              'https://qph.cf2.quoracdn.net/main-qimg-1a76949b7ad38ed534243bb32f6c4ea8-lq',
              height: 100.h,
              width: 80.w,
              fit: BoxFit.cover,
              //image: const NetworkImage(),
            ),
          ),
          const HorizontalSpace(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: double.infinity,
                  child: Text(
                    cubit.chosenVet!.petyName!,
                    style: TextStyles.font16BlackBold,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                Row(
                  children: [
                    DefaultRatingIndicator(rate: cubit.chosenVet!.averageRate!.toDouble(),),
                    const HorizontalSpace(width: 3),
                    Text(cubit.chosenVet!.averageRate!.toString(),style: TextStyles.font12LightGreyRegular),
                  ],
                ),
                Text(
                  cubit.chosenVet!.animals==null?'':cubit.chosenVet!.animals!.toString(),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyles.font12LightGreyRegular,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

}