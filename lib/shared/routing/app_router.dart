
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pety/features/login/cubit/login_cubit.dart';
import 'package:pety/features/login/login_screen.dart';
import 'package:pety/features/register/cubit/register_cubit.dart';
import 'package:pety/features/register/register_screen.dart';
import 'package:pety/features/search_vet/search_for_vet/cubit/search_vet_cubit.dart';
import 'package:pety/features/search_vet/search_for_vet/search_for_vet.dart';
import 'package:pety/layouts/pety_layout/cubit/pety_layout_cubit.dart';
import 'package:pety/layouts/pety_layout/pety_layout.dart';
import 'package:pety/shared/di/dependency_injection.dart';
import 'package:pety/shared/routing/routes.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.loginScreen :
        return MaterialPageRoute(
          builder: (_) =>
              BlocProvider(
                create: (context) => getIt<LoginCubit>(),
                child: LoginScreen(),
              ),
        );
      case Routes.registerScreen :
        return MaterialPageRoute(
          builder: (_) =>
              BlocProvider(
                create: (context) => getIt<RegisterCubit>(),
                child: RegisterScreen(),
              ),
        );
      case Routes.petLayout :
        return MaterialPageRoute(
          builder: (_) =>
              BlocProvider(
                create: (context) => PetLayoutCubit(),
                child: const PetLayout(),
              ),
        );
      case Routes.searchForVet :
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<SearchVetCubit>()..getVets(),
            child: const SearchForVet(),
          ),
        );
      default :
        return MaterialPageRoute(
          builder: (_) =>
              Scaffold(
                body: Center(
                  child: Text(
                      'No route defined for ${settings.name}'
                  ),
                ),
              ),
        );
    }
  }
}