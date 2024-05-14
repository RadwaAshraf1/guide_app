import 'package:guide/data/api/routeapi.dart';
import 'package:guide/data/model/routmodel.dart';

class RoutesRepo{
   final RoutesApi routesApi;

  RoutesRepo({required this.routesApi});

   Future<List<RouteModel>> fetchData() async {
    final routes = await routesApi.fetchData();
    return routes.map((route) => RouteModel.fromJson(route)).toList();
   }
}