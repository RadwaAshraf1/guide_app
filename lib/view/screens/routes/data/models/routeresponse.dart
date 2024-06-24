// ignore_for_file: non_constant_identifier_names

import 'package:json_annotation/json_annotation.dart';
part 'routeresponse.g.dart';

@JsonSerializable()
class RouteResponse {
  final String source;
  final String destination;
  final String next_step;
  final String ditection;
  final String distance;

  RouteResponse({
    required this.source,
    required this.destination,
    required this.next_step,
    required this.ditection,
    required this.distance,
  });
    factory RouteResponse.fromJson(Map<String, dynamic> json) =>
      _$RouteResponseFromJson(json);
}