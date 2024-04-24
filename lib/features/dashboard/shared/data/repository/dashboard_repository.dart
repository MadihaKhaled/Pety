

import 'package:dio/dio.dart';
import 'package:intl/intl.dart';
import 'package:pety/features/dashboard/appointments/models/appointment_status_body.dart';
import 'package:pety/features/dashboard/appointments/models/appointment_status_response.dart';
import 'package:pety/features/dashboard/appointments/models/appointments_body.dart';
import 'package:pety/features/dashboard/appointments/models/appointments_response.dart';
import 'package:pety/features/dashboard/pety_information/models/pety_information_response.dart';
import 'package:pety/features/dashboard/pety_information/models/update_pety_data_response.dart';
import 'package:pety/features/dashboard/shared/data/models/all_roles_response.dart';
import 'package:pety/features/dashboard/work_hours/models/get_work_hours_body.dart';
import 'package:pety/features/dashboard/work_hours/models/get_work_hours_response.dart';
import 'package:pety/features/dashboard/work_hours/models/work_hours_body.dart';
import 'package:pety/features/dashboard/work_hours/models/work_hours_response.dart';
import 'package:pety/shared/extensions.dart';
import 'package:pety/shared/network/local/shared_pred_constants.dart';
import 'package:pety/shared/network/local/shared_pref_helper.dart';
import 'package:pety/shared/network/remote/api_result.dart';
import 'package:pety/shared/network/remote/api_service.dart';
import 'package:pety/shared/network/remote/error_handler.dart';

class DashboardRepository {
  final ApiService _apiService ;

  DashboardRepository(
    this._apiService,
  );

  Future<ApiResult<AppointmentsResponse>> getAllAppointments({required AppointmentsBody appointmentsBody}) async{
    try{
      final AppointmentsResponse response = await _apiService.getAppointmentsDashboard(
          appointmentsBody,
          'Bearer ${SharedPrefHelper.getData(key: SharedPrefConstants.tokenKey)}'
      );
      response.data?.forEach((element) {
        element.date = formatDate(element.date!);
        element.status = element.status!.capitalizeFirstLetter();
      });
      return ApiResult.success(response);
    }catch(error){
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }

  Future<ApiResult<AppointmentStatusResponse>> changeAppointmentStatus({required AppointmentStatusBody appointmentStatusBody}) async{
    try{
      final AppointmentStatusResponse response = await _apiService.changeAppointmentStatus(
          appointmentStatusBody,
          'Bearer ${SharedPrefHelper.getData(key: SharedPrefConstants.tokenKey)}'
      );
      response.data!.status = response.data!.status!.capitalizeFirstLetter();
      return ApiResult.success(response);
    }catch(error){
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }

  Future<ApiResult<PetyInformationResponse>> getPetyInformation() async{
    try{
      final PetyInformationResponse response = await _apiService.petyInformation(
          'Bearer ${SharedPrefHelper.getData(key: SharedPrefConstants.tokenKey)}'
      );
      return ApiResult.success(response);
    }catch(error){
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }

  Future<ApiResult<UpdatePetyDataResponse>> updatePetyData({required FormData petyData}) async{
    try{
      final UpdatePetyDataResponse response = await _apiService.updatePetyData(
          petyData,
          'Bearer ${SharedPrefHelper.getData(key: SharedPrefConstants.tokenKey)}'
      );
      return ApiResult.success(response);
    }catch(error){
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }

  Future<ApiResult<WorkHoursResponse>> addWorkHours({required WorkHoursBody workHoursBody}) async{
    try{
      final WorkHoursResponse response = await _apiService.addWorkHours(
          workHoursBody,
          'Bearer ${SharedPrefHelper.getData(key: SharedPrefConstants.tokenKey)}'
      );
      return ApiResult.success(response);
    }catch(error){
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }

  Future<ApiResult<GetWorkHoursResponse>> getWorkHours({required GetWorkHoursBody getWorkHoursBody}) async{
    try{
      final GetWorkHoursResponse response = await _apiService.getWorkHours(
          getWorkHoursBody,
          'Bearer ${SharedPrefHelper.getData(key: SharedPrefConstants.tokenKey)}'
      );
      return ApiResult.success(response);
    }catch(error){
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }


  Future<ApiResult<AllRolesResponse>> getAllRoles() async{
    try{
      final AllRolesResponse response = await _apiService.getPetyRoles(
          'Bearer ${SharedPrefHelper.getData(key: SharedPrefConstants.tokenKey)}'
      );
      return ApiResult.success(response);
    }catch(error){
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }

  String formatDate(String date){
    DateTime dateTime = DateFormat("dd-MM-yyyy").parse(date);
    return DateFormat("EEE MMMM d, yyyy").format(dateTime);
  }

}