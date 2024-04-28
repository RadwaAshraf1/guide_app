import 'package:flutter/material.dart';
import 'package:guide/constants/strings.dart';
import 'package:guide/view/screens/splashscreen.dart';
import 'package:guide/view/screens/user_forgetpassword.dart';
import 'package:guide/view/screens/user_otpscreen.dart';
import 'package:guide/view/screens/user_resetpassword.dart';
import 'package:guide/view/screens/user_signin.dart';
import 'package:guide/view/screens/user_successpasswors.dart';

class AppRoute{
  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
       case splashScreen:
        return MaterialPageRoute(
          builder: (_) =>const SplashScreen(),
        );
      //  case adminLoginScreen:
      //   return MaterialPageRoute(
      //     builder: (_) =>AdminLoginScreen(),
      //   );
       case userLoginScreen:
        return MaterialPageRoute(
          builder: (_) =>const SignInUser(),
        );
       case otpScreen:
        return MaterialPageRoute(
          builder: (_) =>const OtpScreen(),
        );
       case forgetScreen:
        return MaterialPageRoute(
          builder: (_) => ForgetPasswordUser(),
        );
       case resetPasswordScreen:
        return MaterialPageRoute(
          builder: (_) => SetNewPasswordUser(),
        );
       case successPasswordScreen:
        return MaterialPageRoute(
          builder: (_) => const PasswordRestUser(),
        );
  }
    return null;
}
}