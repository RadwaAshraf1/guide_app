// ignore_for_file: prefer_const_constructors
import 'package:guide/user/employee_user.dart';
import 'package:guide/user/services_user.dart';
import 'package:guide/user/usereditprofile.dart';
import 'package:guide/user/userprofile.dart';

import 'package:flutter/material.dart';
import 'package:guide/approute.dart';
import 'package:guide/constants/strings.dart';
import 'package:guide/di/dependency_injection.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:guide/placeselect.dart';
import 'package:guide/qrcode/generate_qrcode.dart';
import 'package:guide/user/home.dart';
import 'package:guide/view/screens/building/view/onebuilding.dart';
import 'package:guide/view/screens/employee/view/widgets/employeescreen.dart';
import 'package:guide/view/screens/region/view/regions_screen.dart';
import 'package:guide/view/screens/services/view/services_screen.dart';

import 'user/profile/view/updateprofile.dart';

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
        //  home: OneBuildingScreen(),
        onGenerateRoute: appRoute.generateRoute,
        initialRoute:splashScreen,
      ),
    );
  }
}

//flutter pub run build_runner build --delete-conflicting-outputs