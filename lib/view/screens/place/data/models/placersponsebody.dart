// import 'package:json_annotation/json_annotation.dart';

// part 'placersponsebody.g.dart';

// @JsonSerializable()
// class PlaceResponse{

//   final List<Places> places;
//   final String msg;
//   final int status;

//   PlaceResponse({
// required this.msg,
// required this.places,
// required this.status
//   });
//   factory PlaceResponse.fromJson(Map<String, dynamic> json) =>
//       _$PlaceResponseFromJson(json);


// } 
// @JsonSerializable()
// class Places {
//   int? placeId;
//   String? placeName;
//   int? regionId;
//   String? guideWord;
//   int? xCoordinate;
//   int? yCoordinate;
//   int? buildingId;

//   Places(
//       {this.placeId,
//       this.placeName,
//       this.regionId,
//       this.guideWord,
//       this.xCoordinate,
//       this.yCoordinate,
//       this.buildingId});
      
//       factory Places.fromJson(Map<String, dynamic> json) =>
//       _$PlacesFromJson(json);
//       }