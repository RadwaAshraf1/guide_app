// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'getprofile.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetProfileUser _$GetProfileUserFromJson(Map<String, dynamic> json) =>
    GetProfileUser(
      id: (json['id'] as num?)?.toInt(),
      username: json['username'] as String?,
      phone: json['phone'] as String?,
      image: json['image'] as String?,
      email: json['email'] as String?,
    );

Map<String, dynamic> _$GetProfileUserToJson(GetProfileUser instance) =>
    <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'phone': instance.phone,
      'image': instance.image,
      'email': instance.email,
    };
