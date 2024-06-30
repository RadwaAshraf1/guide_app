import 'package:json_annotation/json_annotation.dart';

part 'getregion.g.dart';

@JsonSerializable()
class GetRegion {
  @JsonKey(name: 'Regions')
 final List<Regions>? regions;
  

  GetRegion({this.regions,});
factory GetRegion.fromJson(Map<String, dynamic> json) =>
      _$GetRegionFromJson(json);
}
@JsonSerializable()
class Regions {
  @JsonKey(name: 'region id')
  String? regionId;
   @JsonKey(name: 'region name')
  String? regionName;
  int? xCoordinate;
  int? yCoordinate;

  Regions({this.regionId, this.regionName, this.xCoordinate, this.yCoordinate});
factory Regions.fromJson(Map<String, dynamic> json) =>
      _$RegionsFromJson(json);
}