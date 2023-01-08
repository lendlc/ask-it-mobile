// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_dto.freezed.dart';
part 'auth_dto.g.dart';

@freezed
class RegisterDto with _$RegisterDto {
  const factory RegisterDto({
    @JsonKey(name: 'first_name') required String firstName,
    @JsonKey(name: 'middle_name') required String? middleName,
    @JsonKey(name: 'last_name') required String lastName,
    required String email,
    required String role,
    required String password,
  }) = _RegisterDto;

  const RegisterDto._();

  factory RegisterDto.fromJson(Map<String, dynamic> json) =>
      _$RegisterDtoFromJson(json);
}
