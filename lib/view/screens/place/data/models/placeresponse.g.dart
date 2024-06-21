// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'placeresponse.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PlaceResponse _$PlaceResponseFromJson(Map<String, dynamic> json) =>
    PlaceResponse(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      region_id: (json['region_id'] as num?)?.toInt(),
      guide_word: json['guide_word'] as String?,
      x_coordinate: (json['x_coordinate'] as num?)?.toInt(),
      y_coordinate: (json['y_coordinate'] as num?)?.toInt(),
      building_id: (json['building_id'] as num?)?.toInt(),
    );

Map<String, dynamic> _$PlaceResponseToJson(PlaceResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'region_id': instance.region_id,
      'guide_word': instance.guide_word,
      'x_coordinate': instance.x_coordinate,
      'y_coordinate': instance.y_coordinate,
      'building_id': instance.building_id,
    };
