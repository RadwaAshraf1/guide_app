
import 'package:guide/api/api_errorhandler.dart';
import 'package:guide/api/api_result.dart';
import 'package:guide/api/api_services.dart';
import 'package:guide/view/screens/region/data/models/regionrequest.dart';
import 'package:guide/view/screens/region/data/models/regionresponse.dart';

class RegionRepo {
  final ApiService _apiService;

  RegionRepo(this._apiService);

  Future<ApiResult<RegionResponse>> insertRegion(
      RegionRequest regionRequest) async {
    try {
      final response = await _apiService.insertRegion(regionRequest);
      return ApiResult.success(response);
    } catch (errro) {
      return ApiResult.failure(ErrorHandler.handle(errro));
    }
  }
}