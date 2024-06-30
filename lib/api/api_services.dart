import 'package:dio/dio.dart';
import 'package:guide/api/api_constants.dart';
import 'package:guide/user/profile/data/model/getprofile.dart';
import 'package:guide/user/profile/data/model/updateprofile.dart';
import 'package:guide/user/profile/data/model/updateprofilerequest.dart';
import 'package:guide/view/screens/building/data/model/getonebuilding.dart';
import 'package:guide/view/screens/building/data/model/insert_building_request.dart';
import 'package:guide/view/screens/building/data/model/insert_building_response.dart';
import 'package:guide/view/screens/employee/data/models/employeerequest.dart';
import 'package:guide/view/screens/employee/data/models/employeeresponse.dart';
import 'package:guide/view/screens/login/data/model/login_request_body.dart';
import 'package:guide/view/screens/login/data/model/login_response.dart';
import 'package:guide/view/screens/place/data/apis/place_api_constance.dart';
import 'package:guide/view/screens/place/data/models/getplace.dart';
import 'package:guide/view/screens/place/data/models/placerequestbody.dart';
import 'package:guide/view/screens/place/data/models/placeresponse.dart';
import 'package:guide/view/screens/region/data/models/getregion.dart';
import 'package:guide/view/screens/region/data/models/regionrequest.dart';
import 'package:guide/view/screens/region/data/models/regionresponse.dart';
import 'package:guide/view/screens/routes/data/models/routerequest.dart';
import 'package:guide/view/screens/routes/data/models/routeresponse.dart';
import 'package:guide/view/screens/services/data/models/getallservcies.dart';
import 'package:guide/view/screens/services/data/models/servicesrequest.dart';
import 'package:guide/view/screens/services/data/models/servicesresponse.dart';
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
    @POST(ApiConstants.insertServices)
  Future<ServiceResponse> insertServices(
    @Body() ServiceRequest insertServiceRequest,
  );
    @POST(ApiConstants.insertEmployee)
  Future<EmployeeResponse> insertEmployee(
    @Body() EmployeeRequest insertEmployeeRequest,
  );

  @POST(PlaceApiConstant.insertPlace)
  Future<PlaceResponse> insertPlace(
    @Body() PlacesRequest placesRequest,
  );
  @POST(ApiConstants.insertRoute)
  Future<RouteResponse> insertRoute(
    @Body() RouteRequest routeRequest,
  );
  @POST(ApiConstants.insertRegion)
  Future<RegionResponse> insertRegion(
    @Body() RegionRequest regionRequest,
  );

  @GET(ApiConstants.oneBuilding)
  Future<OneBuildingModel> getOneBuilding();

  @GET(ApiConstants.getRegion)
  Future<GetRegion> getRegiong();

  @GET(PlaceApiConstant.getPlace)
  Future<GetPlaces> getPlace();

  // @GET(ApiConstants.allServices)
  // Future<Services> allServices();

  @GET(ApiConstants.getProfile)
  Future<GetProfileUser> getProfile();

  @POST(ApiConstants.updateProfile)
  Future<UpdateProfile> updateProfile(
    @Body() UpdateProfileRequest updateProfileRequest,
  );
  
}