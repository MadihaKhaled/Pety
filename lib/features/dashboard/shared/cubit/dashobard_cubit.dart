

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pety/features/dashboard/shared/cubit/dashboard_states.dart';
import 'package:pety/features/dashboard/shared/data/repository/dashboard_repository.dart';


class DashboardCubit extends Cubit<DashboardStates>{

  final DashboardRepository _dashboardRepository;
  DashboardCubit(this._dashboardRepository) : super(const DashboardStates.initial());

  static DashboardCubit get(context) => BlocProvider.of(context);

  List<String>? petyRoles;

  void getPetyRoles() async{
    emit(const DashboardStates.loading());
    final response = await _dashboardRepository.getAllRoles();
    response.when(
        success: (data){
          petyRoles = data.data;
          print('HHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHH $petyRoles');
          emit(DashboardStates.success(data));
        },
        failure: (error){
          emit(DashboardStates.error(error: error.apiErrorModel.message!));
        }
    );
  }


}