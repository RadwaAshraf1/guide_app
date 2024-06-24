
import 'package:freezed_annotation/freezed_annotation.dart';
part 'getplace.g.dart';
@JsonSerializable()
class GetPlaces{

  final List<Places> places;

  GetPlaces({required this.places});

factory GetPlaces.fromJson(Map<String, dynamic> json) =>
      _$GetPlacesFromJson(json);
}


@JsonSerializable()
class Places {
  int? placeId;
  String? placeName;
  int? regionId;
  String? guideWord;
  int? xCoordinate;
  int? yCoordinate;
  int? buildingId;

  Places(
      {this.placeId,
      this.placeName,
      this.regionId,
      this.guideWord,
      this.xCoordinate,
      this.yCoordinate,
      this.buildingId});

factory Places.fromJson(Map<String, dynamic> json) =>
      _$PlacesFromJson(json);
}
