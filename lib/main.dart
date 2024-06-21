import 'package:flutter/material.dart';
import 'package:guide/approute.dart';
import 'package:guide/constants/strings.dart';
import 'package:guide/di/dependency_injection.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

late String initialRoute;

void main() {
  setupGetIt();
    runApp(
     MyApp(
      appRoute: AppRoute(),
    ),
  );
}

class MyApp extends StatelessWidget {
   final AppRoute appRoute;
  const MyApp({super.key, required this.appRoute});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Smart Guide',
        onGenerateRoute: appRoute.generateRoute,
        initialRoute:exampleScreen ,
      ),
    );
  }
}

