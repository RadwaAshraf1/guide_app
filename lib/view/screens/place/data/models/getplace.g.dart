// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'getplace.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetPlaces _$GetPlacesFromJson(Map<String, dynamic> json) => GetPlaces(
      places: (json['places'] as List<dynamic>)
          .map((e) => Places.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$GetPlacesToJson(GetPlaces instance) => <String, dynamic>{
      'places': instance.places,
    };

Places _$PlacesFromJson(Map<String, dynamic> json) => Places(
      placeId: (json['placeId'] as num?)?.toInt(),
      placeName: json['placeName'] as String?,
      regionId: (json['regionId'] as num?)?.toInt(),
      guideWord: json['guideWord'] as String?,
      xCoordinate: (json['xCoordinate'] as num?)?.toInt(),
      yCoordinate: (json['yCoordinate'] as num?)?.toInt(),
      buildingId: (json['buildingId'] as num?)?.toInt(),
    );

Map<String, dynamic> _$PlacesToJson(Places instance) => <String, dynamic>{
      'placeId': instance.placeId,
      'placeName': instance.placeName,
      'regionId': instance.regionId,
      'guideWord': instance.guideWord,
      'xCoordinate': instance.xCoordinate,
      'yCoordinate': instance.yCoordinate,
      'buildingId': instance.buildingId,
    };
