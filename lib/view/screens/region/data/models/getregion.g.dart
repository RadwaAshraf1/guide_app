// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'getregion.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetRegion _$GetRegionFromJson(Map<String, dynamic> json) => GetRegion(
      regions: (json['Regions'] as List<dynamic>?)
          ?.map((e) => Regions.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$GetRegionToJson(GetRegion instance) => <String, dynamic>{
      'Regions': instance.regions,
    };

Regions _$RegionsFromJson(Map<String, dynamic> json) => Regions(
      regionId: json['region id'] as String?,
      regionName: json['region name'] as String?,
      xCoordinate: (json['xCoordinate'] as num?)?.toInt(),
      yCoordinate: (json['yCoordinate'] as num?)?.toInt(),
    );

Map<String, dynamic> _$RegionsToJson(Regions instance) => <String, dynamic>{
      'region id': instance.regionId,
      'region name': instance.regionName,
      'xCoordinate': instance.xCoordinate,
      'yCoordinate': instance.yCoordinate,
    };
