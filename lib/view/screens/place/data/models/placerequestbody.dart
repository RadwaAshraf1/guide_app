// ignore_for_file: non_constant_identifier_names

import 'package:json_annotation/json_annotation.dart';
part 'placerequestbody.g.dart';
@JsonSerializable()
class PlacesRequest {
  String? id;
  String? name;
  String? region_id;
  String? guide_word;
  String? x_coordinate;
  String? y_coordinate;
  String? building_id;

  PlacesRequest(
      {required this.id,
      required this.name,
      required this.region_id,
      required this.guide_word,
      required this.x_coordinate,
      required this.y_coordinate,
      required this.building_id});

      Map<String, dynamic> toJson() => _$PlacesRequestToJson(this);

 
}
