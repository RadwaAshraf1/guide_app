// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'insert_building_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InsertBuildingRequest _$InsertBuildingRequestFromJson(
        Map<String, dynamic> json) =>
    InsertBuildingRequest(
      name: json['name'] as String,
      address: json['address'] as String,
      longitude: json['longitude'] as String,
      description: json['description'] as String,
      latitude: json['latitude'] as String,
    );

Map<String, dynamic> _$InsertBuildingRequestToJson(
        InsertBuildingRequest instance) =>
    <String, dynamic>{
      'name': instance.name,
      'address': instance.address,
      'longitude': instance.longitude,
      'description': instance.description,
      'latitude': instance.latitude,
    };
