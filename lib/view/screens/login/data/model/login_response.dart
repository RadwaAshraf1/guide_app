import 'package:json_annotation/json_annotation.dart';
part 'login_response.g.dart';

@JsonSerializable()

class LoginResponse{
   final User? user;
 
  LoginResponse(this.user,);

       factory LoginResponse.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseFromJson(json);
}

@JsonSerializable()
class User {
   int? id;
  dynamic username;
  String? email;
 User(
      {this.id,
      this.username,
      this.email,
     });
     factory User.fromJson(Map<String, dynamic> json) =>
      _$UserFromJson(json);
}

@JsonSerializable()
class Authorisation {
  String? token;
  String? type;

  Authorisation({this.token, this.type});
  factory Authorisation.fromJson(Map<String, dynamic> json) =>
      _$AuthorisationFromJson(json);
}