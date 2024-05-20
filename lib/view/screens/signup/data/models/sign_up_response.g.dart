// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_up_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SignupResponse _$SignupResponseFromJson(Map<String, dynamic> json) =>
    SignupResponse(
      username: json['username'],
      email: json['email'] as String?,
      emailVerifiedAt: json['emailVerifiedAt'],
      type: json['type'] as String?,
      verfication: json['verfication'] as String?,
      image: json['image'] as String?,
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
    )..id = (json['id'] as num?)?.toInt();

Map<String, dynamic> _$SignupResponseToJson(SignupResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'email': instance.email,
      'emailVerifiedAt': instance.emailVerifiedAt,
      'type': instance.type,
      'verfication': instance.verfication,
      'image': instance.image,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };
