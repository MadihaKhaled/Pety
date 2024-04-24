
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pety/features/search_vet/cubit/search_vet_cubit.dart';
import 'package:pety/features/search_vet/cubit/search_vet_states.dart';
import 'package:pety/features/search_vet/data/models/search_vets_response.dart';
import 'package:pety/shared/styles/colors.dart';
import 'package:pety/shared/styles/texts.dart';

class AppointmentItem extends StatelessWidget{

  int index;

  AppointmentItem({
    super.key,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    SearchVetCubit cubit = context.read<SearchVetCubit>();
    final item = cubit.chosenVet!.availabilityFormatted![index];
    return SizedBox(
      width: 45.w,
      child: Card(
          color: ColorManager.defaultColor,
          elevation: 2,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          child: InkWell(
            onTap: (){
              cubit.changeClickedAppointment(index);
            },
            borderRadius: BorderRadius.circular(8),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(item.formatedDate![0],style: TextStyles.font10WhiteRegular.copyWith(height: 1.1),),
                Text(item.formatedDate![1],style: TextStyles.font13WhiteBold.copyWith(height: 1.1),),
                Text(item.formatedDate![2],style: TextStyles.font10WhiteRegular.copyWith(height: 1.1),),
              ],
            ),
          )
      ),
    );
  }

}