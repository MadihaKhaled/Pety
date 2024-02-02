
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pety/shared/routing/app_router.dart';
import 'package:pety/shared/routing/routes.dart';
import 'package:pety/shared/styles/themes.dart';

class PetyApp extends StatelessWidget {
  final AppRouter appRouter;
  const PetyApp({super.key, required this.appRouter});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360,800),
      minTextAdapt: true,
      useInheritedMediaQuery: true,
      child: MaterialApp(
        theme: lightTheme,
        debugShowCheckedModeBanner: false,
        initialRoute: Routes.searchForVet,
        onGenerateRoute: appRouter.generateRoute,
      ),
    );
  }
}