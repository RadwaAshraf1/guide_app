// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'employeerequest.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EmployeeRequest _$EmployeeRequestFromJson(Map<String, dynamic> json) =>
    EmployeeRequest(
      name: json['name'] as String,
      placeId: json['place_id'] as String,
      employeeJop: json['employee_job'] as String,
    );

Map<String, dynamic> _$EmployeeRequestToJson(EmployeeRequest instance) =>
    <String, dynamic>{
      'name': instance.name,
      'place_id': instance.placeId,
      'employee_job': instance.employeeJop,
    };
