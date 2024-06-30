import 'package:json_annotation/json_annotation.dart';
part 'getprofile.g.dart';

@JsonSerializable()
class GetProfileUser {
  int? id;
  String? username;
  String? phone;
  String? image;
  String? email;
  

  GetProfileUser(
      {this.id,
      this.username,
      this.phone,
      this.image,
      this.email,});

  factory GetProfileUser.fromJson(Map<String, dynamic> json) =>
      _$GetProfileUserFromJson(json);
}
