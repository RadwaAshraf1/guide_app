import 'package:json_annotation/json_annotation.dart';
part 'employeerequest.g.dart';

@JsonSerializable()
class EmployeeRequest{
  final String name;
   @JsonKey(name: 'place_id')
  final String placeId;
  @JsonKey(name: 'employee_job')
  final String employeeJop;
  // final String photo;

  EmployeeRequest({
    required this.name,
    required this.placeId,
    required this.employeeJop
    });
    Map<String, dynamic> toJson() => _$EmployeeRequestToJson(this);
}