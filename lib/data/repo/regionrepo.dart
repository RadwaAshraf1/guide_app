import 'package:guide/data/api/regionapi.dart';
import 'package:guide/data/model/regionmodel.dart';

class RegionRepo{
   final RegionApi regionApi;

  RegionRepo({required this.regionApi});

   Future<List<RegionModel>> fetchData() async {
    final regions = await regionApi.fetchData();
    return regions.map((region) => RegionModel.fromJson(region)).toList();
   }
}