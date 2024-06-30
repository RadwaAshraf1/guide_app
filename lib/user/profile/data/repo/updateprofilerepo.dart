import 'package:guide/api/api_errorhandler.dart';
import 'package:guide/api/api_result.dart';
import 'package:guide/api/api_services.dart';
import 'package:guide/user/profile/data/model/updateprofile.dart';
import 'package:guide/user/profile/data/model/updateprofilerequest.dart';

class UpdateProfileRepoRepo {
  final ApiService _apiService;

  UpdateProfileRepoRepo(this._apiService);

  Future<ApiResult<UpdateProfile>> updateProfile(
      UpdateProfileRequest updateProfileReq) async {
    try {
      final response = await _apiService.updateProfile(updateProfileReq);
      return ApiResult.success(response);
    } catch (errro) {
      return ApiResult.failure(ErrorHandler.handle(errro));
    }
  }
}
