
import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pety/features/dashboard/shared/cubit/dashboard_states.dart';
import 'package:pety/features/dashboard/shared/data/repository/dashboard_repository.dart';
import 'package:pety/features/login/data/models/login_response.dart';
import 'package:pety/features/profile/cubit/profile_states.dart';
import 'package:pety/features/profile/data/models/update_profile_body.dart';
import 'package:pety/features/profile/data/models/update_profile_response.dart';
import 'package:pety/features/profile/data/repository/profile_repository.dart';
import 'package:pety/features/register/data/models/register_response.dart';
import 'package:pety/shared/extensions.dart';
import 'package:pety/shared/network/local/shared_pred_constants.dart';
import 'package:pety/shared/network/local/shared_pref_helper.dart';
import 'package:pety/shared/routing/routes.dart';

class DashboardCubit extends Cubit<DashboardStates>{

  final DashboardRepository _profileRepository;
  DashboardCubit(this._profileRepository) : super(const DashboardStates.initial());

  static DashboardCubit get(context) => BlocProvider.of(context);


  /*void emitProfileStates() async{
    emit(const ProfileStates.loading());
    UpdateProfileBody profileBody = UpdateProfileBody();

    final response = await _profileRepository.updateProfile(profileBody: await profileBody.toFormData());
    response.when(
        success: (data){
          emit(ProfileStates.success(data));
        },
        failure: (error){
          emit(ProfileStates.error(error: error.apiErrorModel.message!));
        }
    );
  }*/

}