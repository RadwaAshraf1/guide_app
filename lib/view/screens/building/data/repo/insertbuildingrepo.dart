import 'package:guide/api/api_errorhandler.dart';
import 'package:guide/api/api_result.dart';
import 'package:guide/api/api_services.dart';
import 'package:guide/view/screens/building/data/model/insert_building_request.dart';
import 'package:guide/view/screens/building/data/model/insert_building_response.dart';

class InsertBuildingRepo {
  final ApiService _apiService;

  InsertBuildingRepo(this._apiService);

  Future<ApiResult<InsertBuildingResponse>> insertBuilding(
      InsertBuildingRequest insertBuildingRequest) async {
    try {
      final response = await _apiService.insrtBuilding(insertBuildingRequest);
      return ApiResult.success(response);
    } catch (errro) {
      return ApiResult.failure(ErrorHandler.handle(errro));
    }
  }
}
