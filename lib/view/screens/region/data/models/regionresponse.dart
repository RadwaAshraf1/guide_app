import 'package:json_annotation/json_annotation.dart';
part 'regionresponse.g.dart';

@JsonSerializable()
class RegionResponse {
  final List<Regions> regions;
  final String msg;
  final int status;

  RegionResponse({
    required this.regions,
    required this.msg,
    required this.status,
  });
  factory RegionResponse.fromJson(Map<String, dynamic> json) =>
      _$RegionResponseFromJson(json);
}
@JsonSerializable()
class Regions {
  @JsonKey(name: 'region id')
  final String regionId;
  @JsonKey(name: 'region name')
  final String regionName;
  @JsonKey(name: 'x coordinate')
  final String xCoordinate;
  @JsonKey(name: 'y coordinate')
  final String yCoordinate;

  Regions({
    required this.regionId,
    required this.regionName,
    required this.xCoordinate,
    required this.yCoordinate,
  });
  factory Regions.fromJson(Map<String, dynamic> json) =>
      _$RegionsFromJson(json);
}
