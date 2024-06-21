// ignore_for_file: non_constant_identifier_names
import 'package:json_annotation/json_annotation.dart';

part 'placeresponse.g.dart';

@JsonSerializable()

class PlaceResponse{
  int? id;
  String? name;
  int? region_id;
  String? guide_word;
  int? x_coordinate;
  int? y_coordinate;
  int? building_id;

  PlaceResponse(
      {required this.id,
      required this.name,
      required this.region_id,
      required this.guide_word,
      required this.x_coordinate,
      required this.y_coordinate,
      required this.building_id});

factory PlaceResponse.fromJson(Map<String, dynamic> json) =>
      _$PlaceResponseFromJson(json);


}