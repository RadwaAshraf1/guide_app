// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'regionresponse.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RegionResponse _$RegionResponseFromJson(Map<String, dynamic> json) =>
    RegionResponse(
      regions: (json['regions'] as List<dynamic>)
          .map((e) => Regions.fromJson(e as Map<String, dynamic>))
          .toList(),
      msg: json['msg'] as String,
      status: (json['status'] as num).toInt(),
    );

Map<String, dynamic> _$RegionResponseToJson(RegionResponse instance) =>
    <String, dynamic>{
      'regions': instance.regions,
      'msg': instance.msg,
      'status': instance.status,
    };

Regions _$RegionsFromJson(Map<String, dynamic> json) => Regions(
      regionId: json['region id'] as String,
      regionName: json['region name'] as String,
      xCoordinate: json['x coordinate'] as String,
      yCoordinate: json['y coordinate'] as String,
    );

Map<String, dynamic> _$RegionsToJson(Regions instance) => <String, dynamic>{
      'region id': instance.regionId,
      'region name': instance.regionName,
      'x coordinate': instance.xCoordinate,
      'y coordinate': instance.yCoordinate,
    };
