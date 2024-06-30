import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class DioFactory {
  /// private constructor as I don't want to allow creating an instance of this class
  DioFactory._();

  static Dio? dio;

  static Dio getDio() {
    Duration timeOut = const Duration(seconds: 30);

    if (dio == null) {
      dio = Dio();
      dio!
        ..options.connectTimeout = timeOut
        ..options.receiveTimeout = timeOut;
      addDioInterceptor();
      addDioHeaders();
      return dio!;
    } else {
      return dio!;
    }
  }
  static void addDioHeaders() async {
    dio?.options.headers = {
      // 'content-Type' : 'application/json'
      'Authorization':
          'Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vc21hcnQtZ3VpZGFuY2Utc3lzdGVtLmZpcnN0LW1lZXRpbmcubmV0L2FwaS9hdXRoL3JlZ2lzdGVyIiwiaWF0IjoxNzE5Nzc5ODIyLCJleHAiOjE3MTk3ODM0MjIsIm5iZiI6MTcxOTc3OTgyMiwianRpIjoiV1NPeEFzTUtxUlY3MkU1MyIsInN1YiI6IjI5IiwicHJ2IjoiMjNiZDVjODk0OWY2MDBhZGIzOWU3MDFjNDAwODcyZGI3YTU5NzZmNyJ9.fj4C6cYsz-luzFa4hgTivs3yRumgvOQ344zllSAE1KQ',
    };
  }

  static void addDioInterceptor() {
    dio?.interceptors.add(
      PrettyDioLogger(
        requestBody: true,
        requestHeader: true,
        responseHeader: true,
      ),
    );
  }
  
}