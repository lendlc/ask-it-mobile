// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'jdoodle_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ExecuteCodeDto _$$_ExecuteCodeDtoFromJson(Map<String, dynamic> json) =>
    _$_ExecuteCodeDto(
      clientId: json['clientId'] as String,
      clientSecret: json['clientSecret'] as String,
      script: json['script'] as String,
      stdin: json['stdin'] as String? ?? 'askit',
      language: json['language'] as String? ?? 'java',
      versionIndex: json['versionIndex'] as String? ?? '0',
    );

Map<String, dynamic> _$$_ExecuteCodeDtoToJson(_$_ExecuteCodeDto instance) =>
    <String, dynamic>{
      'clientId': instance.clientId,
      'clientSecret': instance.clientSecret,
      'script': instance.script,
      'stdin': instance.stdin,
      'language': instance.language,
      'versionIndex': instance.versionIndex,
    };
