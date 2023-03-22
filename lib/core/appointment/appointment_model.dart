// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'appointment_model.freezed.dart';
part 'appointment_model.g.dart';

@freezed
class Appointment with _$Appointment {
  const factory Appointment({
    required num id,
    @JsonKey(name: 'tutor_email') required String tutorEmail,
    required DateTime start,
    required DateTime end,
    required String status,
    @JsonKey(name: 'tutee') required num tuteeId,
    @JsonKey(name: 'tutor_schedule') required num scheduleId,
  }) = _Appointment;

  const Appointment._();

  factory Appointment.fromJson(Map<String, dynamic> json) => _$AppointmentFromJson(json);
}
