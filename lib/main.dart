import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pety/bloc_obsrver.dart';
import 'package:pety/pety_app.dart';
import 'package:pety/shared/network/local/shared_pref_helper.dart';
import 'package:pety/shared/network/remote/dio_helper.dart';
import 'package:pety/shared/routing/app_router.dart';

void main() async{

  Bloc.observer = MyBlocObserver();
  WidgetsFlutterBinding.ensureInitialized();
  DioHelper.init();
  await SharedPrefHelper.init();

  runApp(PetyApp(
    appRouter: AppRouter(),
  ));
}




