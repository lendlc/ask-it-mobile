// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RegisterDto _$$_RegisterDtoFromJson(Map<String, dynamic> json) =>
    _$_RegisterDto(
      firstName: json['first_name'] as String,
      middleName: json['middle_name'] as String?,
      lastName: json['last_name'] as String,
      email: json['email'] as String,
      role: json['role'] as String,
      password: json['password'] as String,
    );

Map<String, dynamic> _$$_RegisterDtoToJson(_$_RegisterDto instance) =>
    <String, dynamic>{
      'first_name': instance.firstName,
      'middle_name': instance.middleName,
      'last_name': instance.lastName,
      'email': instance.email,
      'role': instance.role,
      'password': instance.password,
    };
