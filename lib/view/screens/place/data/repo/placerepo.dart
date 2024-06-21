import 'package:guide/api/api_errorhandler.dart';
import 'package:guide/api/api_result.dart';
import 'package:guide/api/api_services.dart';
import 'package:guide/view/screens/place/data/models/placerequestbody.dart';
import 'package:guide/view/screens/place/data/models/placeresponse.dart';

class PlaceRepo {
  final ApiService _apiService;

  PlaceRepo(this._apiService);

  Future<ApiResult<PlaceResponse>> insertPlace(
      PlacesRequest placesRequest) async {
    try {
      final response = await _apiService.insertPlace(placesRequest);
      return ApiResult.success(response);
    } catch (errro) {
      return ApiResult.failure(ErrorHandler.handle(errro));
    }
  }
}