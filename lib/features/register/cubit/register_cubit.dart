
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pety/features/register/cubit/register_states.dart';
import 'package:pety/shared/styles/colors.dart';

class RegisterCubit extends Cubit<RegisterStates>{

  RegisterCubit() : super(RegisterInitialState());

  static RegisterCubit get(context) => BlocProvider.of(context);
  
  bool isObscure = true;
  bool isObscureConf = true;
  Color isFocus1 = Colors.black;
  Color isFocus2 = Colors.black;

  void changePasswordVisibility(bool password){
    if(password){
      isObscure=!isObscure;
    }else{
      isObscureConf=!isObscureConf;
    }
    emit(RegisterChangePasswordVisibilityState());
  }

  void checkFocusForPassword1(bool focus){
    isFocus1 = focus?ColorManager.defaultColor:Colors.black;
    emit(RegisterChangeSuffixColorOnFocus1());
  }

  void checkFocusForPassword2(bool focus){
    isFocus2 = focus?ColorManager.defaultColor:Colors.black;
    //print('Daaaaaaaaaaaaaata $focus');
    emit(RegisterChangeSuffixColorOnFocus2());
  }

}