
import 'package:json_annotation/json_annotation.dart';
part 'updateprofile.g.dart';

@JsonSerializable()
class UpdateProfile {
  
  User? user;

  UpdateProfile({ this.user});
factory UpdateProfile.fromJson(Map<String, dynamic> json) =>
      _$UpdateProfileFromJson(json);
}

@JsonSerializable()
class User {
  int? id;
  String? username;
  String? phone;
  String? image;
  String? email;
 
  User(
      {this.id,
      this.username,
      this.phone,
      this.image,
   
      this.email,});
factory User.fromJson(Map<String, dynamic> json) =>
      _$UserFromJson(json);
 
}
