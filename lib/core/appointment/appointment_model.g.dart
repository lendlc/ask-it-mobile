// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'appointment_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Appointment _$$_AppointmentFromJson(Map<String, dynamic> json) =>
    _$_Appointment(
      id: json['id'] as num,
      tutorEmail: json['tutor_email'] as String,
      start: DateTime.parse(json['start'] as String),
      end: DateTime.parse(json['end'] as String),
      status: json['status'] as String,
      tuteeId: json['tutee'] as num,
      scheduleId: json['tutor_schedule'] as num,
    );

Map<String, dynamic> _$$_AppointmentToJson(_$_Appointment instance) =>
    <String, dynamic>{
      'id': instance.id,
      'tutor_email': instance.tutorEmail,
      'start': instance.start.toIso8601String(),
      'end': instance.end.toIso8601String(),
      'status': instance.status,
      'tutee': instance.tuteeId,
      'tutor_schedule': instance.scheduleId,
    };
