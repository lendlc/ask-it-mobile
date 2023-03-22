// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'schedule_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Schedule _$$_ScheduleFromJson(Map<String, dynamic> json) => _$_Schedule(
      id: json['id'] as num,
      userFullName: json['user_full_name'] as String,
      durationInMinutes: json['duration_in_mins'] as num,
      subject: json['subject'] as String,
      start: DateTime.parse(json['datetime_start'] as String),
      end: DateTime.parse(json['datetime_end'] as String),
      userId: json['user'] as num,
      isAvailable: json['is_available'] as bool,
    );

Map<String, dynamic> _$$_ScheduleToJson(_$_Schedule instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_full_name': instance.userFullName,
      'duration_in_mins': instance.durationInMinutes,
      'subject': instance.subject,
      'datetime_start': instance.start.toIso8601String(),
      'datetime_end': instance.end.toIso8601String(),
      'user': instance.userId,
      'is_available': instance.isAvailable,
    };
