import 'package:json_annotation/json_annotation.dart';
part 'servicesresponse.g.dart';

@JsonSerializable()
class ServiceResponse{
  final Data data;
   final String message;
  final int status;

  ServiceResponse({
   required this.data,
   required this.message,
   required this.status});


factory ServiceResponse.fromJson(Map<String, dynamic> json) =>
      _$ServiceResponseFromJson(json);
}

@JsonSerializable()
class Data {
  String? name;
     @JsonKey(name: 'place_id')
  String? placeId;
  String? description;

  Data({this.name, this.placeId, this.description});
  factory Data.fromJson(Map<String, dynamic> json) =>
      _$DataFromJson(json);
}