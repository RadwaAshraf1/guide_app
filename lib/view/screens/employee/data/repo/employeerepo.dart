import 'package:guide/api/api_errorhandler.dart';
import 'package:guide/api/api_result.dart';
import 'package:guide/api/api_services.dart';
import 'package:guide/view/screens/employee/data/models/employeerequest.dart';
import 'package:guide/view/screens/employee/data/models/employeeresponse.dart';

class EmployeeRepo {
  final ApiService _apiService;

  EmployeeRepo(this._apiService);

  Future<ApiResult<EmployeeResponse>> insertEmployee(
      EmployeeRequest employeeRequest) async {
    try {
      final response = await _apiService.insertEmployee(employeeRequest);
      return ApiResult.success(response);
    } catch (errro) {
      return ApiResult.failure(ErrorHandler.handle(errro));
    }
  }
}
