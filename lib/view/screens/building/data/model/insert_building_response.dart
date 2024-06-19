import 'package:image_picker/image_picker.dart';
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
  final String buidingName;
 final String address;
  final String longitude;
  final String description;
  final String latitude;
  final ImagePicker photo;

Data({
required this.buidingName,
     required this.address,
     required this.longitude,
     required this.description,
     required this.latitude,
     required this.photo
});
factory Data.fromJson(Map<String, dynamic> json) =>
      _$DataFromJson(json);
}