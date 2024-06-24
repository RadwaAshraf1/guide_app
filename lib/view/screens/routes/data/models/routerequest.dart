// ignore_for_file: non_constant_identifier_names
import 'package:json_annotation/json_annotation.dart';

part 'routerequest.g.dart';

@JsonSerializable()
class RouteRequest {
  final String source;
  final String destination;
  final String next_step;
  final String direction;
  final String distance;

  RouteRequest({
    required this.source,
    required this.destination,
    required this.next_step,
    required this.direction,
    required this.distance,
  });
  Map<String, dynamic> toJson() => _$RouteRequestToJson(this);
}
