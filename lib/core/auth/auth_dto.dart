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
