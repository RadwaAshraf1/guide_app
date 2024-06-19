import 'package:dio/dio.dart';
import 'package:guide/api/api_constants.dart';
import 'package:guide/view/screens/building/data/model/insert_building_request.dart';
import 'package:guide/view/screens/building/data/model/insert_building_response.dart';
import 'package:guide/view/screens/login/data/model/login_request_body.dart';
import 'package:guide/view/screens/login/data/model/login_response.dart';
import 'package:guide/view/screens/signup/data/models/sign_up_request_body.dart';
import 'package:guide/view/screens/signup/data/models/sign_up_response.dart';
import 'package:retrofit/retrofit.dart';
part 'api_services.g.dart';

@RestApi(baseUrl: ApiConstants.apiBaseUrl)
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  @POST(ApiConstants.login)
  Future<LoginResponse> login(
    @Body() LoginRequestBody loginRequestBody,
  );


  @POST(ApiConstants.signup)
  Future<SignupResponse> signup(
    @Body() SignupRequestBody signupRequestBody,
  );
  
    @POST(ApiConstants.insertBuilding)
  Future<InsertBuildingResponse> insrtBuilding(
    @Body() InsertBuildingRequest insertBuildingRequest,
  );
  
}