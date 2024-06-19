// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'insert_building_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InsertBuildingRequest _$InsertBuildingRequestFromJson(
        Map<String, dynamic> json) =>
    InsertBuildingRequest(
      buidingName: json['buidingName'] as String,
      address: json['address'] as String,
      longitude: json['longitude'] as String,
      description: json['description'] as String,
      latitude: json['latitude'] as String,
    );

Map<String, dynamic> _$InsertBuildingRequestToJson(
        InsertBuildingRequest instance) =>
    <String, dynamic>{
      'buidingName': instance.buidingName,
      'address': instance.address,
      'longitude': instance.longitude,
      'description': instance.description,
      'latitude': instance.latitude,
    };
