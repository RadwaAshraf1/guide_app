import 'package:guide/api/api_errorhandler.dart';
import 'package:guide/api/api_result.dart';
import 'package:guide/api/api_services.dart';
import 'package:guide/view/screens/place/data/models/getplace.dart';

class GetPlaceRepo {
  final ApiService _apiService;

  GetPlaceRepo(this._apiService);

  Future<ApiResult<GetPlaces>> getPlace() async {
    try {
      final response = await _apiService.getPlace();
      return ApiResult.success(response);
    } catch (errro) {
      return ApiResult.failure(ErrorHandler.handle(errro));
    }
  }
}