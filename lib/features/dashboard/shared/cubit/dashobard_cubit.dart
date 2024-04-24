

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pety/features/dashboard/appointments/models/appointment_status_body.dart';
import 'package:pety/features/dashboard/appointments/models/appointments_body.dart';
import 'package:pety/features/dashboard/appointments/models/appointments_response.dart';
import 'package:pety/features/dashboard/shared/cubit/dashboard_states.dart';
import 'package:pety/features/dashboard/shared/data/repository/dashboard_repository.dart';


class DashboardCubit extends Cubit<DashboardStates>{

  final DashboardRepository _dashboardRepository;
  DashboardCubit(this._dashboardRepository) : super(const DashboardStates.initial());

  static DashboardCubit get(context) => BlocProvider.of(context);

  List<String>? roles;
  String currentRole='';
  AppointmentsResponse? appointmentsResponse;

  void getPetyRoles() async{
    emit(const DashboardStates.loading());
    final response = await _dashboardRepository.getAllRoles();
    response.when(
        success: (data){
          roles = data.data;
          emit(DashboardStates.success(data));
        },
        failure: (error){
          emit(DashboardStates.error(error: error.apiErrorModel.message!));
        }
    );
  }

  void getAllAppointments(String role) async{
    emit(const DashboardStates.loadAppointments());
    currentRole=role;
    final response = await _dashboardRepository.getAllAppointments(appointmentsBody:AppointmentsBody(role: role));
    response.when(
        success: (data){
          appointmentsResponse = data;
          emit(DashboardStates.successAppointments(data));
        },
        failure: (error){
          emit(DashboardStates.errorAppointments(error: error.apiErrorModel.message!));
        }
    );
  }

  void changeAppointmentStatus({required AppointmentStatusBody statusBody}) async{
    emit(const DashboardStates.loadChangeAppointmentsStatus());
    final response = await _dashboardRepository.changeAppointmentStatus(
        appointmentStatusBody: statusBody
    );
    response.when(
        success: (data){
          emit(DashboardStates.successChangeAppointmentsStatus(data));
        },
        failure: (error){
          emit(DashboardStates.errorChangeAppointmentsStatus(error: error.apiErrorModel.message!));
        }
    );
  }


}