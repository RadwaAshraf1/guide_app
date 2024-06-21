// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'placerequestbody.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PlacesRequest _$PlacesRequestFromJson(Map<String, dynamic> json) =>
    PlacesRequest(
      id: json['id'] as String?,
      name: json['name'] as String?,
      region_id: json['region_id'] as String?,
      guide_word: json['guide_word'] as String?,
      x_coordinate: json['x_coordinate'] as String?,
      y_coordinate: json['y_coordinate'] as String?,
      building_id: json['building_id'] as String?,
    );

Map<String, dynamic> _$PlacesRequestToJson(PlacesRequest instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'region_id': instance.region_id,
      'guide_word': instance.guide_word,
      'x_coordinate': instance.x_coordinate,
      'y_coordinate': instance.y_coordinate,
      'building_id': instance.building_id,
    };
