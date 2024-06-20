import 'package:json_annotation/json_annotation.dart';
part 'servicesrequest.g.dart';

@JsonSerializable()
class ServiceRequest{
  final String name;
   @JsonKey(name: 'place_id')
  final String placeId;
  final String description;

  ServiceRequest({
    required this.name, 
    required this.placeId, 
    required this.description
    });

    Map<String, dynamic> toJson() => _$ServiceRequestToJson(this);
}