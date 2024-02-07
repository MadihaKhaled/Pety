
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pety/features/login/cubit/login_states.dart';
import 'package:pety/features/login/data/models/login_request_body.dart';
import 'package:pety/features/login/data/repository/login_repo.dart';

class LoginCubit extends Cubit<LoginStates>{

  final LoginRepository _loginRepository;
  LoginCubit(this._loginRepository) : super(const LoginStates.initial());

  static LoginCubit get(context) => BlocProvider.of(context);


  void emitLoginStates(LoginRequestBody loginRequestBody) async{
    emit(const LoginStates.loading());
    final response = await _loginRepository.login(loginRequestBody);
    response.when(
      success: (data){
        emit(LoginStates.success(data));
      },
      failure: (error){
        emit(LoginStates.error(error: error));
      }
    );
  }

}