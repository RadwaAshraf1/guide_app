
import 'package:guide/data/api/placesapi.dart';
import 'package:guide/data/model/placesmodel.dart';

class PlacesRepo{
   final PlacesApi placesApi;

  PlacesRepo({required this.placesApi});

   Future<List<PlacesModel>> fetchData() async {
    final places = await placesApi.fetchData();
    return places.map((place) => PlacesModel.fromJson(place)).toList();
   }
}