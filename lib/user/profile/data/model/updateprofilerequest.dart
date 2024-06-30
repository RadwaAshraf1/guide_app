import 'package:json_annotation/json_annotation.dart';
part 'updateprofilerequest.g.dart';

@JsonSerializable()
class UpdateProfileRequest {
  
 int? id;
  String? username;
  String? phone;
  String? image;
  String? email;
  String? password;
 

  UpdateProfileRequest(    {this.id,
      this.username,
      this.phone,
      this.image,
      this.password,
   
      this.email,});

factory UpdateProfileRequest.fromJson(Map<String, dynamic> json) =>
      _$UpdateProfileRequestFromJson(json);
}
