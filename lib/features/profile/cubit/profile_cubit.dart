
import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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

class ProfileCubit extends Cubit<ProfileStates>{

  final ProfileRepository _profileRepository;
  ProfileCubit(this._profileRepository) : super(const ProfileStates.initial());

  static ProfileCubit get(context) => BlocProvider.of(context);

  File? profImage;
  String? profileImage;
  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confPasswordController = TextEditingController();
  TextEditingController phoneController = TextEditingController();

  void getUserData() async{
    emit(const ProfileStates.loadGeneralData());
    User user = User.fromJson(jsonDecode(SharedPrefHelper.getData(key: SharedPrefConstants.userData)));
    profileImage = user.photo!.url;
    firstNameController.text = user.firstName!;
    lastNameController.text = user.lastName!;
    emailController.text = user.email!;
    phoneController.text = user.phone!;
    emit(const ProfileStates.successGeneralData());
  }


  void emitProfileStates() async{
    emit(const ProfileStates.loading());
    UpdateProfileBody profileBody = UpdateProfileBody(
      firstName: firstNameController.text,
      lastName: lastNameController.text,
      email: emailController.text,
      phone: phoneController.text,
    );
    /*if(passwordController.text.isNotBlank()&&passwordController.text==confPasswordController.text){
      profileBody.password=passwordController.text;
    }*/
    if(profImage!=null)profileBody.photo=profImage;

    final response = await _profileRepository.updateProfile(profileBody: await profileBody.toFormData());
    response.when(
        success: (data){
          emit(ProfileStates.success(data));
        },
        failure: (error){
          emit(ProfileStates.error(error: error.apiErrorModel.message!));
        }
    );

  }

  void pickImage() async{
    emit(const ProfileStates.loadGeneralData());
    profImage = await _profileRepository.pickImage();
    emit(const ProfileStates.successGeneralData());
  }

  void logOut(BuildContext context){
    SharedPrefHelper.removeData(key: SharedPrefConstants.tokenKey).then((value){
      context.pushNamedAndRemoveUntil(Routes.loginScreen,predicate: (Route<dynamic> route) => false);
    });
  }

}