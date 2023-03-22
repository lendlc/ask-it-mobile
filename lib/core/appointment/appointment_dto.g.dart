// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'appointment_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CreateAppointmentDto _$$_CreateAppointmentDtoFromJson(
        Map<String, dynamic> json) =>
    _$_CreateAppointmentDto(
      status: json['status'] as String? ?? 'approved',
      scheduleId: json['tutor_schedule'] as num,
      isArchived: json['is_archived'] as bool? ?? false,
    );

Map<String, dynamic> _$$_CreateAppointmentDtoToJson(
        _$_CreateAppointmentDto instance) =>
    <String, dynamic>{
      'status': instance.status,
      'tutor_schedule': instance.scheduleId,
      'is_archived': instance.isArchived,
    };
