

import 'package:freezed_annotation/freezed_annotation.dart';
part 'dashboard_states.freezed.dart';

@Freezed()
class DashboardStates<T> with _$DashboardStates<T>{
  const factory DashboardStates.initial() = _Initial;
  const factory DashboardStates.loading() = Loading;
  const factory DashboardStates.success(T data) = Success<T>;
  const factory DashboardStates.error({required String error}) = Error;
  const factory DashboardStates.loadGeneralData() = GeneralDataLoading;
  const factory DashboardStates.successGeneralData() = GeneralDataSuccess;
}