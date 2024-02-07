
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pety/features/register/cubit/register_states.dart';

class RegisterCubit extends Cubit<RegisterStates>{

  RegisterCubit() : super(RegisterInitialState());

  static RegisterCubit get(context) => BlocProvider.of(context);
  

}