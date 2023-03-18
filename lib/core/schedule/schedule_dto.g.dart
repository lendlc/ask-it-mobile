// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'schedule_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CreateScheduleDto _$$_CreateScheduleDtoFromJson(Map<String, dynamic> json) =>
    _$_CreateScheduleDto(
      subject: json['subject'] as String,
      start: DateTime.parse(json['datetime_start'] as String),
      end: DateTime.parse(json['datetime_end'] as String),
      isAvailable: json['is_available'] as bool? ?? true,
    );

Map<String, dynamic> _$$_CreateScheduleDtoToJson(
        _$_CreateScheduleDto instance) =>
    <String, dynamic>{
      'subject': instance.subject,
      'datetime_start': instance.start.toIso8601String(),
      'datetime_end': instance.end.toIso8601String(),
      'is_available': instance.isAvailable,
    };
