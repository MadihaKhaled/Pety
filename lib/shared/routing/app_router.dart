
import 'package:flutter/material.dart';
import 'package:pety/features/login/login_screen.dart';
import 'package:pety/features/register/register_screen.dart';
import 'package:pety/layouts/pety_layout/pety_layout.dart';
import 'package:pety/shared/routing/routes.dart';

class AppRouter{
  Route generateRoute(RouteSettings settings){
    switch(settings.name){
      case Routes.loginScreen :
        return MaterialPageRoute(
          builder : (_) => LoginScreen(),
        );
      case Routes.registerScreen :
        return MaterialPageRoute(
            builder: (_) => RegisterScreen(),
        );
      case Routes.petLayout :
        return MaterialPageRoute(
          builder: (_) => PetLayout(),
        );
      default :
        return MaterialPageRoute(
            builder: (_) => Scaffold(
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