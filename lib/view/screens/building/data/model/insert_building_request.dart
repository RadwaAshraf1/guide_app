import 'package:json_annotation/json_annotation.dart';
part 'insert_building_request.g.dart';

@JsonSerializable()
class InsertBuildingRequest {
  final String buidingName;
 final String address;
  final String longitude;
  final String description;
  final String latitude;
  // final dynamic photo;

  InsertBuildingRequest({
     required this.buidingName,
     required this.address,
     required this.longitude,
     required this.description,
     required this.latitude,
    //  required this.photo
     });

  Map<String, dynamic> toJson() => _$InsertBuildingRequestToJson(this);
}