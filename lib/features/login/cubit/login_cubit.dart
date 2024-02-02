
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pety/features/login/cubit/login_states.dart';

class LoginCubit extends Cubit<LoginStates>{

  LoginCubit() : super(LoginInitialState());

  static LoginCubit get(context) => BlocProvider.of(context);
  
  bool isObscure = true;
  
  void changePasswordVisibility(){
    isObscure=!isObscure;
    emit(LoginChangePasswordVisibilityState());
  }

}