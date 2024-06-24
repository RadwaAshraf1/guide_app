import 'package:guide/api/api_errorhandler.dart';
import 'package:guide/api/api_result.dart';
import 'package:guide/api/api_services.dart';
import 'package:guide/view/screens/routes/data/models/routerequest.dart';
import 'package:guide/view/screens/routes/data/models/routeresponse.dart';

class RouteRepo {
  final ApiService _apiService;

  RouteRepo(this._apiService);

  Future<ApiResult<RouteResponse>> insertRoute(
      RouteRequest routeRequest) async {
    try {
      final response = await _apiService.insertRoute(routeRequest);
      return ApiResult.success(response);
    } catch (errro) {
      return ApiResult.failure(ErrorHandler.handle(errro));
    }
  }
}