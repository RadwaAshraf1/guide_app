// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'servicesrequest.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ServiceRequest _$ServiceRequestFromJson(Map<String, dynamic> json) =>
    ServiceRequest(
      name: json['name'] as String,
      placeId: json['place_id'] as String,
      description: json['description'] as String,
    );

Map<String, dynamic> _$ServiceRequestToJson(ServiceRequest instance) =>
    <String, dynamic>{
      'name': instance.name,
      'place_id': instance.placeId,
      'description': instance.description,
    };
