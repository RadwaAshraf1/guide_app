// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'routerequest.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RouteRequest _$RouteRequestFromJson(Map<String, dynamic> json) => RouteRequest(
      source: json['source'] as String,
      destination: json['destination'] as String,
      next_step: json['next_step'] as String,
      direction: json['direction'] as String,
      distance: json['distance'] as String,
    );

Map<String, dynamic> _$RouteRequestToJson(RouteRequest instance) =>
    <String, dynamic>{
      'source': instance.source,
      'destination': instance.destination,
      'next_step': instance.next_step,
      'direction': instance.direction,
      'distance': instance.distance,
    };
