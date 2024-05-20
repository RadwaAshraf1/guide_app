import 'package:json_annotation/json_annotation.dart';
part 'login_response.g.dart';

@JsonSerializable()

class LoginResponse{
  int? id;
  dynamic username;
  String? email;
  dynamic emailVerifiedAt;
  String? type;
  String? verfication;
  String? image;
  String? createdAt;
  String? updatedAt;

  LoginResponse({this.id,
      this.username,
      this.email,
      this.emailVerifiedAt,
      this.type,
      this.verfication,
      this.image,
      this.createdAt,
      this.updatedAt});

       factory LoginResponse.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseFromJson(json);
}

