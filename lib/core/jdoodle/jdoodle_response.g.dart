// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'jdoodle_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ExecuteCodeResponse _$$_ExecuteCodeResponseFromJson(
        Map<String, dynamic> json) =>
    _$_ExecuteCodeResponse(
      output: json['output'] as String,
      statusCode: json['statusCode'] as num,
      memory: json['memory'] as String?,
      cpuTime: json['cpuTime'] as String?,
    );

Map<String, dynamic> _$$_ExecuteCodeResponseToJson(
        _$_ExecuteCodeResponse instance) =>
    <String, dynamic>{
      'output': instance.output,
      'statusCode': instance.statusCode,
      'memory': instance.memory,
      'cpuTime': instance.cpuTime,
    };
