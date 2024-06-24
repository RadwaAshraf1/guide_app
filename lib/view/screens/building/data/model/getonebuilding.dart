import 'package:json_annotation/json_annotation.dart';

part 'getonebuilding.g.dart';

@JsonSerializable()
class OneBuildingModel {
   Data? data;
   
    factory OneBuildingModel.fromJson(Map<String, dynamic> json) =>
      _$OneBuildingModelFromJson(json);

  OneBuildingModel({required this.data});
}
@JsonSerializable()
class Data {
  @JsonKey(name: 'buiding name')
   String? buidingName;
   String? address;
   String? longitude;
   String? description;
   String? latitude;
   String? photo;

  Data({required this.buidingName, required this.address, required this.longitude, required this.description, required this.latitude, required this.photo});
  factory Data.fromJson(Map<String, dynamic> json) =>
      _$DataFromJson(json);
}
