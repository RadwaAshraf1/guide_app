
import 'package:guide/data/api/onebuidingapi.dart';
import 'package:guide/data/model/onebuilding.dart';

class OneBuidingRepo{
   final OneBuidingApi oneBuidingApi ;

  OneBuidingRepo({required this.oneBuidingApi});

   Future<List<OneBuilding>> fetchData() async {
    final building = await oneBuidingApi.fetchData();
    return building.map((building) => OneBuilding.fromJson(building)).toList();
   }
}