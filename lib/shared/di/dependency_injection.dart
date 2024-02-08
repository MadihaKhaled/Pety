
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:pety/features/login/cubit/login_cubit.dart';
import 'package:pety/features/login/data/repository/login_repo.dart';
import 'package:pety/features/register/cubit/register_cubit.dart';
import 'package:pety/features/register/data/repository/register_repo.dart';
import 'package:pety/shared/network/remote/api_service.dart';
import 'package:pety/shared/network/remote/dio_helper.dart';

final getIt = GetIt.instance;

Future<void> setupGetIt() async{

  //dio & api
  Dio dio = DioHelper.getDio();
  getIt.registerLazySingleton<ApiService>(() => ApiService(dio));

  // login
  getIt.registerLazySingleton<LoginRepository>(() => LoginRepository(getIt()));
  getIt.registerLazySingleton<LoginCubit>(() => LoginCubit(getIt()));

  // register
  getIt.registerLazySingleton<RegisterRepository>(() => RegisterRepository(getIt()));
  getIt.registerLazySingleton<RegisterCubit>(() => RegisterCubit(getIt()));

}