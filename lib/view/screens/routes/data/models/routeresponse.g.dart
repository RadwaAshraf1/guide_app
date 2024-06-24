// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'routeresponse.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RouteResponse _$RouteResponseFromJson(Map<String, dynamic> json) =>
    RouteResponse(
      source: json['source'] as String,
      destination: json['destination'] as String,
      next_step: json['next_step'] as String,
      ditection: json['ditection'] as String,
      distance: json['distance'] as String,
    );

Map<String, dynamic> _$RouteResponseToJson(RouteResponse instance) =>
    <String, dynamic>{
      'source': instance.source,
      'destination': instance.destination,
      'next_step': instance.next_step,
      'ditection': instance.ditection,
      'distance': instance.distance,
    };
