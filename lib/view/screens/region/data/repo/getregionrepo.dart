
import 'package:guide/api/api_errorhandler.dart';
import 'package:guide/api/api_result.dart';
import 'package:guide/api/api_services.dart';
import 'package:guide/view/screens/region/data/models/getregion.dart';

class GetRegionRepo {
  final ApiService _apiService;

  GetRegionRepo(this._apiService);

  Future<ApiResult<GetRegion>> getRegion() async {
    try {
      final response = await _apiService.getRegiong();
      return ApiResult.success(response);
    } catch (errro) {
      return ApiResult.failure(ErrorHandler.handle(errro));
    }
  }
}