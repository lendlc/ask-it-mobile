// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'appointment_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Appointment _$$_AppointmentFromJson(Map<String, dynamic> json) =>
    _$_Appointment(
      id: json['id'] as num,
      tutorId: json['tutor_id'] as num,
      tutorEmail: json['tutor_email'] as String,
      tutorName: json['tutor_full_name'] as String,
      tuteeId: json['tutee_id'] as num,
      tuteeName: json['tutee_full_name'] as String,
      subject: json['subject'] as String,
      start: DateTime.parse(json['start'] as String),
      end: DateTime.parse(json['end'] as String),
      status: json['status'] as String,
      scheduleId: json['tutor_schedule'] as num,
    );

Map<String, dynamic> _$$_AppointmentToJson(_$_Appointment instance) =>
    <String, dynamic>{
      'id': instance.id,
      'tutor_id': instance.tutorId,
      'tutor_email': instance.tutorEmail,
      'tutor_full_name': instance.tutorName,
      'tutee_id': instance.tuteeId,
      'tutee_full_name': instance.tuteeName,
      'subject': instance.subject,
      'start': instance.start.toIso8601String(),
      'end': instance.end.toIso8601String(),
      'status': instance.status,
      'tutor_schedule': instance.scheduleId,
    };
