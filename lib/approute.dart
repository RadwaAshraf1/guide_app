import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:guide/btn.dart';
import 'package:guide/constants/strings.dart';
import 'package:guide/di/dependency_injection.dart';
import 'package:guide/view/screens/building/data/model/getonebuilding.dart';
import 'package:guide/view/screens/building/logic/insertbuilding_cubit.dart';
import 'package:guide/view/screens/building/logic/onebuildinglogic/onebuilding_cubit.dart';
import 'package:guide/view/screens/building/view/addbuilding.dart';
import 'package:guide/view/screens/building/view/onebuilding.dart';
import 'package:guide/view/screens/employee/logic/employee_cubit.dart';
import 'package:guide/view/screens/employee/view/addemployee.dart';
import 'package:guide/view/screens/employee/view/employee.dart';
import 'package:guide/view/screens/login/logic/login_cubit.dart';
import 'package:guide/view/screens/login/ui/user_forgetpassword.dart';
import 'package:guide/view/screens/login/ui/user_otpscreen.dart';
import 'package:guide/view/screens/login/ui/user_resetpassword.dart';
import 'package:guide/view/screens/login/ui/user_signin.dart';
import 'package:guide/view/screens/login/ui/user_successpasswors.dart';
import 'package:guide/view/screens/place/logic/place_cubit.dart';
import 'package:guide/view/screens/place/view/place.dart';
import 'package:guide/view/screens/place/view/placescreen.dart';
import 'package:guide/view/screens/region/logic/region_cubit.dart';
import 'package:guide/view/screens/region/view/region.dart';
import 'package:guide/view/screens/routes/logic/route_cubit.dart';
import 'package:guide/view/screens/routes/view/route.dart';
import 'package:guide/view/screens/services/logic/service_cubit.dart';
import 'package:guide/view/screens/services/view/addservice.dart';
import 'package:guide/view/screens/services/view/services.dart';
import 'package:guide/view/screens/signup/logic/sign_up_cubit.dart';
import 'package:guide/view/screens/splashscreen.dart';
import 'package:guide/view/screens/signup/ui/user_signup.dart';

class AppRoute {
  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case splashScreen:
        return MaterialPageRoute(
          builder: (_) => const SplashScreen(),
        );
      case exampleScreen:
        return MaterialPageRoute(
          builder: (_) => const Example(),
        );
      case userLoginScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<LoginCubit>(),
            child: const SignInUser(),
          ),
        );
      case userSignUpScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
              create: (context) => getIt<SignupCubit>(),
              child: const SignupUser()),
        );
      case addBuildingScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<InsertBuildingCubit>(),
            child: const AddBuilding(),
          ),
        );
      case serviceScreen:
        return MaterialPageRoute(
          builder: (_) => const Services(),
        );
      case addServiceScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<ServiceCubit>(),
            child: const AddServices(),
          ),
        );
      case addEmployeeScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<EmployeeCubit>(),
            child: const AddEmployee(),
          ),
        );
        case employeeScreen:
        return MaterialPageRoute(
          builder: (_) => const Employee(),
        );
        case oneBuildingScreen:
          // final oneBuilding = settings.arguments as DataOneBuildind;
        return MaterialPageRoute(
          builder: (_) =>  BlocProvider(
            create: (context) => OneBuildingCubit(getIt())..emitInsertBuildingState(),
            child: const OneBuildingScreen()),
        );
        case placeScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<PlaceCubit>(),
            child: const AddPlace(),
          ),
        );
         case getPlaceScreen:
        return MaterialPageRoute(
          builder: (_) => const PlaceScreen(),
        );
        case routeScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<RouteCubit>(),
            child: const InsertRoute(),
          ),
        );
        case regionScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<RegionCubit>(),
            child: const InsertRegion(),
          ),
        );
      case otpScreen:
        return MaterialPageRoute(
          builder: (_) => const OtpScreen(),
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
