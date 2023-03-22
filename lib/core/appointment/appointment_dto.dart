// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'appointment_dto.freezed.dart';
part 'appointment_dto.g.dart';

@freezed
class CreateAppointmentDto with _$CreateAppointmentDto {
  const factory CreateAppointmentDto({
    @JsonKey(defaultValue: 'approved') required String status,
    // @JsonKey(nullable: true, defaultValue: null) required String? description,
    @JsonKey(name: 'tutor_schedule') required num scheduleId,
    @JsonKey(name: 'is_archived', defaultValue: false) required bool isArchived,
  }) = _CreateAppointmentDto;

  const CreateAppointmentDto._();

  factory CreateAppointmentDto.fromJson(Map<String, dynamic> json) =>
      _$CreateAppointmentDtoFromJson(json);
}
