import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:guide/api/api_services.dart';
import 'package:guide/api/dio_factory.dart';
import 'package:guide/view/screens/building/data/repo/insertbuildingrepo.dart';
import 'package:guide/view/screens/building/logic/insertbuilding_cubit.dart';
import 'package:guide/view/screens/login/data/repo/loginrepo.dart';
import 'package:guide/view/screens/login/logic/login_cubit.dart';
import 'package:guide/view/screens/signup/data/repos/sign_up_repo.dart';
import 'package:guide/view/screens/signup/logic/sign_up_cubit.dart';

final getIt = GetIt.instance;

Future<void> setupGetIt() async {
  // Dio & ApiService
  Dio dio = DioFactory.getDio();
  getIt.registerLazySingleton<ApiService>(() => ApiService(dio));

  // login
  getIt.registerLazySingleton<LoginRepo>(() => LoginRepo(getIt()));
  getIt.registerFactory<LoginCubit>(() => LoginCubit(getIt()));

   // signup
  getIt.registerLazySingleton<SignupRepo>(() => SignupRepo(getIt()));
  getIt.registerFactory<SignupCubit>(() => SignupCubit(getIt()));
 
 //insert building
  getIt.registerLazySingleton<InsertBuildingRepo>(() => InsertBuildingRepo(getIt()));
  getIt.registerFactory<InsertBuildingCubit>(() => InsertBuildingCubit(getIt()));
}