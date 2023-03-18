// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'jdoodle_dto.freezed.dart';
part 'jdoodle_dto.g.dart';

@freezed
class ExecuteCodeDto with _$ExecuteCodeDto {
  const factory ExecuteCodeDto({
    required String clientId,
    required String clientSecret,
    required String script,
    @JsonKey(defaultValue: 'askit') required String stdin,
    @JsonKey(defaultValue: 'java') required String language,
    @JsonKey(defaultValue: '0') required String versionIndex,
  }) = _ExecuteCodeDto;

  const ExecuteCodeDto._();

  factory ExecuteCodeDto.fromJson(Map<String, dynamic> json) => _$ExecuteCodeDtoFromJson(json);
}
