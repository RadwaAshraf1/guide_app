import 'package:dio/dio.dart';
import 'package:guide/constants/strings.dart';


class PlacesApi{
  late Dio dio;

  PlacesApi() {
    BaseOptions options = BaseOptions(
      baseUrl: baseUrl,
      receiveDataWhenStatusError: true,
      connectTimeout: const Duration(seconds: 60),
      receiveTimeout: const Duration(seconds: 20),
    );

    dio = Dio(options);
  }

  Future<List<dynamic>> fetchData() async {
    try {
      Response response = await dio.get('places');
      print(response.data.toString());
      return response.data;
    } catch (e) {
      print(e.toString());
      return [];
    }
    
  }
}