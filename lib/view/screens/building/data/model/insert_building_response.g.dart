// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'insert_building_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InsertBuildingResponse _$InsertBuildingResponseFromJson(
        Map<String, dynamic> json) =>
    InsertBuildingResponse(
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
      message: json['message'] as String?,
      status: (json['status'] as num?)?.toInt(),
    );

Map<String, dynamic> _$InsertBuildingResponseToJson(
        InsertBuildingResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
      'message': instance.message,
      'status': instance.status,
    };

Data _$DataFromJson(Map<String, dynamic> json) => Data(
      buidingName: json['buidingName'] as String,
      address: json['address'] as String,
      longitude: json['longitude'] as String,
      description: json['description'] as String,
      latitude: json['latitude'] as String,
      photo: json['photo'] as dynamic,
    );

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
      'buidingName': instance.buidingName,
      'address': instance.address,
      'longitude': instance.longitude,
      'description': instance.description,
      'latitude': instance.latitude,
      'photo': instance.photo,
    };
