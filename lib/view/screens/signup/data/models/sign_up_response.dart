import 'package:json_annotation/json_annotation.dart';
part 'sign_up_response.g.dart';

@JsonSerializable()
class SignupResponse {
  int? id;
  dynamic username;
  String? email;
  dynamic emailVerifiedAt;
  String? type;
  String? verfication;
  String? image;
  String? createdAt;
  String? updatedAt;

  SignupResponse({
      this.username,
      this.email,
      this.emailVerifiedAt,
      this.type,
      this.verfication,
      this.image,
      this.createdAt,
      this.updatedAt
    });

  factory SignupResponse.fromJson(Map<String, dynamic> json) =>
      _$SignupResponseFromJson(json);
}
