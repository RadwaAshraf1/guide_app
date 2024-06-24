// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'getonebuilding.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OneBuildingModel _$OneBuildingModelFromJson(Map<String, dynamic> json) =>
    OneBuildingModel(
      data: Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$OneBuildingModelToJson(OneBuildingModel instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

Data _$DataFromJson(Map<String, dynamic> json) => Data(
      buidingName: json['buiding name'] as String,
      address: json['address'] as String,
      longitude: json['longitude'] as String,
      description: json['description'] as String,
      latitude: json['latitude'] as String,
      photo: json['photo'] as String,
    );

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
      'buiding name': instance.buidingName,
      'address': instance.address,
      'longitude': instance.longitude,
      'description': instance.description,
      'latitude': instance.latitude,
      'photo': instance.photo,
    };
