import 'package:json_annotation/json_annotation.dart';
part 'employeeresponse.g.dart';
@JsonSerializable()
class EmployeeResponse{
  final Data data;
  final String message;
  final int status;

  EmployeeResponse({
   required this.data,
   required this.message, 
   required this.status});

   
factory EmployeeResponse.fromJson(Map<String, dynamic> json) =>
      _$EmployeeResponseFromJson(json);

}

@JsonSerializable()
class Data {
  String? name;
  @JsonKey(name: 'place_id')
  String? placeId;
  @JsonKey(name: 'employee_job')
  String? employeeJob;
  // String? photo;
  Data({
    this.name,
    
     this.placeId,
      this.employeeJob,
      //  this.photo
       });
       factory Data.fromJson(Map<String, dynamic> json) =>
      _$DataFromJson(json);



}