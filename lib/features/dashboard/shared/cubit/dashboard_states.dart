

import 'package:freezed_annotation/freezed_annotation.dart';
part 'dashboard_states.freezed.dart';

@Freezed()
class DashboardStates<T> with _$DashboardStates<T>{
  const factory DashboardStates.initial() = _Initial;
  const factory DashboardStates.loading() = Loading;
  const factory DashboardStates.success(T data) = Success<T>;
  const factory DashboardStates.error({required String error}) = Error;
  const factory DashboardStates.loadAppointments() = AppointmentsLoading;
  const factory DashboardStates.successAppointments(T data) = AppointmentsSuccess;
  const factory DashboardStates.errorAppointments({required String error}) = AppointmentsError;
  const factory DashboardStates.loadChangeAppointmentsStatus() = ChangeAppointmentsStatusLoading;
  const factory DashboardStates.successChangeAppointmentsStatus(T data) = ChangeAppointmentsStatusSuccess;
  const factory DashboardStates.errorChangeAppointmentsStatus({required String error}) = ChangeAppointmentsStatusError;
  const factory DashboardStates.loadUpdatePetyInfo() = UpdatePetyInfoLoading;
  const factory DashboardStates.successUpdatePetyInfo(T data) = UpdatePetyInfoSuccess;
  const factory DashboardStates.errorUpdatePetyInfo({required String error}) = UpdatePetyInfoError;
}