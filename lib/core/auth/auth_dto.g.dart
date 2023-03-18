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

Map<String, dynamic> _$$_RegisterDtoToJson(_$_RegisterDto instance) {
  final val = <String, dynamic>{
    'first_name': instance.firstName,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('middle_name', instance.middleName);
  val['last_name'] = instance.lastName;
  val['email'] = instance.email;
  val['role'] = instance.role;
  val['password'] = instance.password;
  return val;
}

_$_LoginDto _$$_LoginDtoFromJson(Map<String, dynamic> json) => _$_LoginDto(
      username: json['username'] as String,
      password: json['password'] as String,
    );

Map<String, dynamic> _$$_LoginDtoToJson(_$_LoginDto instance) =>
    <String, dynamic>{
      'username': instance.username,
      'password': instance.password,
    };

_$_SendPasswordResetEmailDto _$$_SendPasswordResetEmailDtoFromJson(
        Map<String, dynamic> json) =>
    _$_SendPasswordResetEmailDto(
      email: json['email'] as String,
    );

Map<String, dynamic> _$$_SendPasswordResetEmailDtoToJson(
        _$_SendPasswordResetEmailDto instance) =>
    <String, dynamic>{
      'email': instance.email,
    };

_$_ResetPasswordDto _$$_ResetPasswordDtoFromJson(Map<String, dynamic> json) =>
    _$_ResetPasswordDto(
      email: json['email'] as String,
      code: json['code'] as String,
      newPassword: json['new_password'] as String,
      newPasswordConfirmation: json['new_password_2'] as String,
    );

Map<String, dynamic> _$$_ResetPasswordDtoToJson(_$_ResetPasswordDto instance) =>
    <String, dynamic>{
      'email': instance.email,
      'code': instance.code,
      'new_password': instance.newPassword,
      'new_password_2': instance.newPasswordConfirmation,
    };

_$_ChangePasswordDto _$$_ChangePasswordDtoFromJson(Map<String, dynamic> json) =>
    _$_ChangePasswordDto(
      oldPassword: json['old_password'] as String,
      newPassword: json['new_password'] as String,
      newPasswordConfirmation: json['new_password_2'] as String,
    );

Map<String, dynamic> _$$_ChangePasswordDtoToJson(
        _$_ChangePasswordDto instance) =>
    <String, dynamic>{
      'old_password': instance.oldPassword,
      'new_password': instance.newPassword,
      'new_password_2': instance.newPasswordConfirmation,
    };
