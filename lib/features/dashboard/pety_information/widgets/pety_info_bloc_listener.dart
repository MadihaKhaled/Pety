
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pety/features/dashboard/shared/cubit/dashboard_states.dart';
import 'package:pety/features/dashboard/shared/cubit/dashobard_cubit.dart';
import 'package:pety/features/profile/cubit/profile_cubit.dart';
import 'package:pety/features/profile/cubit/profile_states.dart';
import 'package:pety/shared/extensions.dart';
import 'package:pety/shared/network/local/shared_pred_constants.dart';
import 'package:pety/shared/network/local/shared_pref_helper.dart';
import 'package:pety/shared/routing/routes.dart';
import 'package:pety/shared/widget_functions.dart';

class PetyInfoBlocListener extends StatelessWidget{
  const PetyInfoBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<DashboardCubit,DashboardStates>(
      listenWhen: (previous, current){
        return current is UpdatePetyInfoSuccess || current is UpdatePetyInfoLoading || current is UpdatePetyInfoError;
      },
      listener: (context,state){
        state.whenOrNull(
            loadUpdatePetyInfo: (){
              showDialog(
                barrierDismissible:false,
                context: context,
                builder: (context) => const Center(
                  child: CircularProgressIndicator(),
                ),
              );
            },
            successUpdatePetyInfo: (data){
              context.pop();
            },
            errorUpdatePetyInfo: (error){
              WidgetFunctions.setupErrorState(context, error);
            }
        );
      },
      child: const SizedBox.shrink(),
    );
  }


}