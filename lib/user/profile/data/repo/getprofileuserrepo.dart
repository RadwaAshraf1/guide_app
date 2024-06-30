import 'package:guide/api/api_errorhandler.dart';
import 'package:guide/api/api_result.dart';
import 'package:guide/api/api_services.dart';
import 'package:guide/user/profile/data/model/getprofile.dart';

class GetProfileUserRepo {
  final ApiService _apiService;

  GetProfileUserRepo(this._apiService);

  Future<ApiResult<GetProfileUser>> getProfile () async {
    try {
      final response = await _apiService.getProfile();
      return ApiResult.success(response);
    } catch (errro) {
      return ApiResult.failure(ErrorHandler.handle(errro));
    }
  }
}
