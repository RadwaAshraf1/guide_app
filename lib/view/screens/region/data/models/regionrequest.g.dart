// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'regionrequest.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RegionRequest _$RegionRequestFromJson(Map<String, dynamic> json) =>
    RegionRequest(
      id: json['id'] as String,
      name: json['name'] as String,
      x_coordinate: json['x_coordinate'] as String,
      y_coordinate: json['y_coordinate'] as String,
    );

Map<String, dynamic> _$RegionRequestToJson(RegionRequest instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'x_coordinate': instance.x_coordinate,
      'y_coordinate': instance.y_coordinate,
    };
