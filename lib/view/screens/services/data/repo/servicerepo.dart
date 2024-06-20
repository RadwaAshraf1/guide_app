import 'package:guide/api/api_errorhandler.dart';
import 'package:guide/api/api_result.dart';
import 'package:guide/api/api_services.dart';
import 'package:guide/view/screens/services/data/models/servicesrequest.dart';
import 'package:guide/view/screens/services/data/models/servicesresponse.dart';

class ServiceRepo {
  final ApiService _apiService;

  ServiceRepo(this._apiService);

  Future<ApiResult<ServiceResponse>> insertServices(
      ServiceRequest serviceRequest) async {
    try {
      final response = await _apiService.insertServices(serviceRequest);
      return ApiResult.success(response);
    } catch (errro) {
      return ApiResult.failure(ErrorHandler.handle(errro));
    }
  }
}
