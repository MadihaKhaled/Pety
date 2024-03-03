import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pety/features/search_vet/search_for_vet/cubit/search_vet_cubit.dart';
import 'package:pety/features/search_vet/search_for_vet/cubit/search_vet_states.dart';
import 'package:pety/shared/extensions.dart';
import 'package:pety/shared/styles/colors.dart';
import 'package:pety/shared/styles/texts.dart';
import 'package:pety/shared/widgets/default_button.dart';
import 'package:pety/shared/widgets/horizontal_space.dart';

class ApplyAndResetButtons extends StatelessWidget {
  final BuildContext cubitContext;

  const ApplyAndResetButtons({
    super.key,
    required this.cubitContext,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            child: DefaultButton(
                height: 60.h,
                width: double.infinity,
                color: ColorManager.orange,
                text: 'Apply',
                textStyle: TextStyles.font13WhiteBold,
                onClick: () {
                  cubitContext.read<SearchVetCubit>().getVets();
                  cubitContext.pop();
                }
            )
        ),
        const HorizontalSpace(width: 10),
        Expanded(
            child: DefaultButton(
                height: 60.h,
                width: double.infinity,
                color: ColorManager.resetButtonColor,
                text: 'Reset',
                textStyle: TextStyles.font13WhiteBold,
                onClick: () {
                  cubitContext.read<SearchVetCubit>().resetFilters();
                }
            )
        ),
      ],
    );
  }

}