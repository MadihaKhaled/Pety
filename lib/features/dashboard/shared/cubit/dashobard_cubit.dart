

import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pety/features/dashboard/appointments/models/appointment_status_body.dart';
import 'package:pety/features/dashboard/appointments/models/appointments_body.dart';
import 'package:pety/features/dashboard/appointments/models/appointments_response.dart';
import 'package:pety/features/dashboard/pety_information/models/pety_information_body.dart';
import 'package:pety/features/dashboard/pety_information/models/update_pety_data_body.dart';
import 'package:pety/features/dashboard/shared/cubit/dashboard_states.dart';
import 'package:pety/features/dashboard/shared/data/repository/dashboard_repository.dart';
import 'package:pety/shared/extensions.dart';


class DashboardCubit extends Cubit<DashboardStates>{

  final DashboardRepository _dashboardRepository;
  DashboardCubit(this._dashboardRepository) : super(const DashboardStates.initial());

  List<String>? roles;
  String currentRole='';
  AppointmentsResponse? appointmentsResponse;

  //Text edit for pety Info
  final TextEditingController nameController = TextEditingController();
  final TextEditingController serviceController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController priceController = TextEditingController();
  final TextEditingController locationController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();


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

  void getPetyInfo(String role) async{
    emit(const DashboardStates.loading());
    final response = await _dashboardRepository.getPetyInformation(petyInformationBody: PetyInformationBody(role: role));
    response.when(
        success: (data){
          nameController.text = data.data![0].petyName!;
          serviceController.text = data.data![0].clinicalName!;
          phoneController.text = data.data![0].phoneNumber!;
          emailController.text = data.data![0].email!;
          priceController.text = data.data![0].price!.toString();
          locationController.text = data.data![0].address!;
          descriptionController.text = data.data![0].description!;
          emit(DashboardStates.success(data));
        },
        failure: (error){
          emit(DashboardStates.error(error: error.apiErrorModel.message!));
        }
    );
  }

  void updatePetyInfo() async{
    emit(const DashboardStates.loadUpdatePetyInfo());
    UpdatePetyDataBody petyDataBody = UpdatePetyDataBody(
      role: currentRole,
      petyName: nameController.text,
      clinicalName: serviceController.text,
      phoneNumber: phoneController.text,
      email: emailController.text,
      price: priceController.text,
      address: locationController.text,
      description: descriptionController.text,
    );
    final response = await _dashboardRepository.updatePetyData(petyData: await petyDataBody.toFormData());
    response.when(
        success: (data){
          emit(DashboardStates.successUpdatePetyInfo(data));
        },
        failure: (error){
          emit(DashboardStates.errorUpdatePetyInfo(error: error.apiErrorModel.message!));
        }
    );
  }

  void onBackPressed(BuildContext context){
    appointmentsResponse = null;
    nameController.text='';
    serviceController.text='';
    phoneController.text='';
    emailController.text='';
    priceController.text='';
    locationController.text='';
    descriptionController.text='';
    context.pop();
  }

}