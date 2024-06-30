import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:guide/api/api_services.dart';
import 'package:guide/api/dio_factory.dart';
import 'package:guide/user/profile/data/repo/getprofileuserrepo.dart';
import 'package:guide/user/profile/data/repo/updateprofilerepo.dart';
import 'package:guide/user/profile/logic/updateprofile_cubit.dart';
import 'package:guide/view/screens/building/data/repo/insertbuildingrepo.dart';
import 'package:guide/view/screens/building/data/repo/onebuilding.dart';
import 'package:guide/view/screens/building/logic/insertbuilding_cubit.dart';
import 'package:guide/view/screens/building/logic/onebuildinglogic/onebuilding_cubit.dart';
import 'package:guide/view/screens/employee/data/repo/employeerepo.dart';
import 'package:guide/view/screens/employee/logic/employee_cubit.dart';
import 'package:guide/view/screens/login/data/repo/loginrepo.dart';
import 'package:guide/view/screens/login/logic/login_cubit.dart';
import 'package:guide/view/screens/place/data/repo/getplacerepo.dart';
import 'package:guide/view/screens/place/data/repo/placerepo.dart';
import 'package:guide/view/screens/place/logic/getplaces_cubit.dart';
import 'package:guide/view/screens/place/logic/place_cubit.dart';
import 'package:guide/view/screens/region/data/repo/getregionrepo.dart';
import 'package:guide/view/screens/region/data/repo/regionrepo.dart';
import 'package:guide/view/screens/region/logic/region_cubit.dart';
import 'package:guide/view/screens/routes/data/repo/routerepo.dart';
import 'package:guide/view/screens/routes/logic/route_cubit.dart';
import 'package:guide/view/screens/services/data/repo/allservicesrepo.dart';
import 'package:guide/view/screens/services/data/repo/servicerepo.dart';
import 'package:guide/view/screens/services/logic/service_cubit.dart';
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
 
 //insert service
  getIt.registerLazySingleton<ServiceRepo>(() => ServiceRepo(getIt()));
  getIt.registerFactory<ServiceCubit>(() => ServiceCubit(getIt()));
 

  getIt.registerLazySingleton<UpdateProfileRepoRepo>(() => UpdateProfileRepoRepo(getIt()));
  getIt.registerFactory<UpdateProfileCubit>(() => UpdateProfileCubit(getIt()));
 
 //insert employee
  getIt.registerLazySingleton<EmployeeRepo>(() => EmployeeRepo(getIt()));
  getIt.registerFactory<EmployeeCubit>(() => EmployeeCubit(getIt()));

  getIt.registerLazySingleton<PlaceRepo>(() => PlaceRepo(getIt()));
  getIt.registerFactory<PlaceCubit>(() => PlaceCubit(getIt()));
  
  getIt.registerLazySingleton<RouteRepo>(() => RouteRepo(getIt()));
  getIt.registerFactory<RouteCubit>(() => RouteCubit(getIt()));
  
  getIt.registerLazySingleton<RegionRepo>(() => RegionRepo(getIt()));
  getIt.registerFactory<RegionCubit>(() => RegionCubit(getIt()));
  
  getIt.registerLazySingleton<GetPlaceRepo>(() => GetPlaceRepo(getIt()));
  getIt.registerFactory<GetPlacesCubit>(() => GetPlacesCubit(getIt()));
 
 getIt.registerLazySingleton<OneBuildingRepo>(() => OneBuildingRepo(getIt()));
  // getIt.registerFactory<OneBuildingCubit>(() => OneBuildingCubit(getIt()));
 
 getIt.registerLazySingleton<GetRegionRepo>(() => GetRegionRepo(getIt()));
  // getIt.registerFactory<OneBuildingCubit>(() => OneBuildingCubit(getIt()));
 
//  getIt.registerLazySingleton<AllServicesRepo>(() => AllServicesRepo(getIt()));
  // getIt.registerFactory<OneBuildingCubit>(() => OneBuildingCubit(getIt()));
 
 getIt.registerLazySingleton<GetProfileUserRepo>(() => GetProfileUserRepo(getIt()));
  // getIt.registerFactory<OneBuildingCubit>(() => OneBuildingCubit(getIt()));



}