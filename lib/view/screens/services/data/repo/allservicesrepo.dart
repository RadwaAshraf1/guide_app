// import 'package:guide/api/api_errorhandler.dart';
// import 'package:guide/api/api_result.dart';
// import 'package:guide/api/api_services.dart';
// import 'package:guide/view/screens/services/data/models/getallservcies.dart';

// class AllServicesRepo {
//   final ApiService _apiService;

//   AllServicesRepo(this._apiService);

//   Future<ApiResult<Services>> allServices () async {
//     try {
//       final response = await _apiService.allServices();
//       return ApiResult.success(response);
//     } catch (errro) {
//       return ApiResult.failure(ErrorHandler.handle(errro));
//     }
//   }
// }
