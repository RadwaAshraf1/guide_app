import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:guide/constants/strings.dart';
import 'package:guide/di/dependency_injection.dart';
import 'package:guide/view/screens/login/logic/login_cubit.dart';
import 'package:guide/view/screens/login/ui/user_forgetpassword.dart';
import 'package:guide/view/screens/login/ui/user_otpscreen.dart';
import 'package:guide/view/screens/login/ui/user_resetpassword.dart';
import 'package:guide/view/screens/login/ui/user_signin.dart';
import 'package:guide/view/screens/login/ui/user_successpasswors.dart';
import 'package:guide/view/screens/signup/logic/sign_up_cubit.dart';
import 'package:guide/view/screens/splashscreen.dart';
import 'package:guide/view/screens/signup/ui/user_signup.dart';

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
          builder: (_) => BlocProvider(
            create: (context) => getIt<LoginCubit>(),
            child: const SignInUser(),),
        );
       case userSignUpScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<SignupCubit>(),
            child: const SignupUser()),
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