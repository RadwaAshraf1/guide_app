import 'package:json_annotation/json_annotation.dart';
part 'sign_up_request_body.g.dart';

@JsonSerializable()
class SignupRequestBody {
  final String email;
  final String password;
 @JsonKey(name: 'password_confirmation')
  final String passwordConfirmation;
    final String type;

  SignupRequestBody(
 {
    required this.email,
    required this.password,
   required this.type,
  required this.passwordConfirmation
  });

  Map<String, dynamic> toJson() => _$SignupRequestBodyToJson(this);
}