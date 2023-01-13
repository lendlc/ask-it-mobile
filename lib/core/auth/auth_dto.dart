// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_dto.freezed.dart';
part 'auth_dto.g.dart';

@freezed
class RegisterDto with _$RegisterDto {
  const factory RegisterDto({
    @JsonKey(name: 'first_name') required String firstName,
    @JsonKey(name: 'middle_name', includeIfNull: false) required String? middleName,
    @JsonKey(name: 'last_name') required String lastName,
    required String email,
    required String role,
    required String password,
  }) = _RegisterDto;

  const RegisterDto._();

  factory RegisterDto.fromJson(Map<String, dynamic> json) => _$RegisterDtoFromJson(json);
}

@freezed
class LoginDto with _$LoginDto {
  const factory LoginDto({
    required String username,
    required String password,
  }) = _LoginDto;

  const LoginDto._();

  factory LoginDto.fromJson(Map<String, dynamic> json) => _$LoginDtoFromJson(json);
}

@freezed
class SendPasswordResetEmailDto with _$SendPasswordResetEmailDto {
  const factory SendPasswordResetEmailDto({
    required String email,
  }) = _SendPasswordResetEmailDto;

  const SendPasswordResetEmailDto._();

  factory SendPasswordResetEmailDto.fromJson(Map<String, dynamic> json) =>
      _$SendPasswordResetEmailDtoFromJson(json);
}

@freezed
class ResetPasswordDto with _$ResetPasswordDto {
  const factory ResetPasswordDto({
    required String email,
    required String code,
    @JsonKey(name: 'new_password') required String newPassword,
    @JsonKey(name: 'new_password_2') required String newPasswordConfirmation,
  }) = _ResetPasswordDto;

  const ResetPasswordDto._();

  factory ResetPasswordDto.fromJson(Map<String, dynamic> json) => _$ResetPasswordDtoFromJson(json);
}

@freezed
class ChangePasswordDto with _$ChangePasswordDto {
  const factory ChangePasswordDto({
    required String oldPassword,
    @JsonKey(name: 'new_password') required String newPassword,
    @JsonKey(name: 'new_password_2') required String newPasswordConfirmation,
  }) = _ChangePasswordDto;

  const ChangePasswordDto._();

  factory ChangePasswordDto.fromJson(Map<String, dynamic> json) =>
      _$ChangePasswordDtoFromJson(json);
}
