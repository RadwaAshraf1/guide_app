// import 'package:dio/dio.dart';
// import 'package:guide/api/api_constants.dart';
// import 'package:guide/view/screens/login/data/login_request_body.dart';
// import 'package:retrofit/retrofit.dart';
// part 'api_services.g.dart';

// @RestApi(baseUrl: ApiConstants.apiBaseUrl)
// abstract class ApiService {
//   factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

//   @POST(ApiConstants.login)
//   Future<LoginResponse> login(
//     @Body() LoginRequestBody loginRequestBody,
//   );

//   @POST(ApiConstants.signup)
//   Future<SignupResponse> signup(
//     @Body() SignupRequestBody signupRequestBody,
//   );
// }