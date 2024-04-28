import 'package:flutter/material.dart';
import 'package:guide/approute.dart';
import 'package:guide/constants/strings.dart';

late String initialRoute;

void main() {
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
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Smart Guide',
      onGenerateRoute: appRoute.generateRoute,
      initialRoute: splashScreen,
    );
  }
}

