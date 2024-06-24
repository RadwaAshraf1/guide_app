import 'package:guide/api/api_errorhandler.dart';
import 'package:guide/api/api_result.dart';
import 'package:guide/api/api_services.dart';
import 'package:guide/view/screens/building/data/model/getonebuilding.dart';

class OneBuildingRepo {
  final ApiService _apiService;

  OneBuildingRepo(this._apiService);

  Future<ApiResult<OneBuildingModel>> getOneBuilding () async {
    try {
      final response = await _apiService.getOneBuilding();
      return ApiResult.success(response);
    } catch (errro) {
      return ApiResult.failure(ErrorHandler.handle(errro));
    }
  }
}
