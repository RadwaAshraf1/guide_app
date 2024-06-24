// ignore_for_file: non_constant_identifier_names

import 'package:json_annotation/json_annotation.dart';

part 'regionrequest.g.dart';

@JsonSerializable()
class RegionRequest {
  final String id;
  final String name;
  final String x_coordinate;
  final String y_coordinate;

  RegionRequest({
    required this.id,
    required this.name,
    required this.x_coordinate,
    required this.y_coordinate,
  });
  Map<String, dynamic> toJson() => _$RegionRequestToJson(this);
}
