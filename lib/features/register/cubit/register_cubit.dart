
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pety/features/register/cubit/register_states.dart';
import 'package:pety/features/register/data/models/register_request_body.dart';
import 'package:pety/features/register/data/repository/register_repo.dart';

class RegisterCubit extends Cubit<RegisterStates>{

  final RegisterRepository _registerRepository;

  RegisterCubit(this._registerRepository) : super(const RegisterStates.initial());

  static RegisterCubit get(context) => BlocProvider.of(context);

  void emitRegisterStates(RegisterRequestBody registerRequestBody)async{
    emit(const RegisterStates.loading());
    final response = await _registerRepository.register(registerRequestBody);
    response.when(
      success: (data){
        emit(RegisterStates.success(data));
      },
      failure: (error){
        emit(RegisterStates.error(error: error.apiErrorModel.message!));
      }
    );
  }

}