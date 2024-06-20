
import 'package:json_annotation/json_annotation.dart';
part 'insert_building_response.g.dart';

@JsonSerializable()
class InsertBuildingResponse {
  Data? data;
  String? message;
  int? status;

  InsertBuildingResponse({
    required this.data,
    required this.message,
    required  this.status});

   factory InsertBuildingResponse.fromJson(Map<String, dynamic> json) =>
      _$InsertBuildingResponseFromJson(json);

}


@JsonSerializable()
class Data {
   @JsonKey(name: 'buiding name')
  final String buildingName;
 final String address;
  final String longitude;
  final String description;
  final String latitude;
  // final ImagePicker photo;

Data({
required this.buildingName,
     required this.address,
     required this.longitude,
     required this.description,
     required this.latitude,
    //  required this.photo
});
factory Data.fromJson(Map<String, dynamic> json) =>
      _$DataFromJson(json);
}