// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'schedule_dto.freezed.dart';
part 'schedule_dto.g.dart';

@freezed
class CreateScheduleDto with _$CreateScheduleDto {
  const factory CreateScheduleDto({
    required String subject,
    @JsonKey(name: 'datetime_start') required DateTime start,
    @JsonKey(name: 'datetime_end') required DateTime end,
    @JsonKey(name: 'is_available', defaultValue: true) required bool isAvailable,
  }) = _CreateScheduleDto;

  const CreateScheduleDto._();

  factory CreateScheduleDto.fromJson(Map<String, dynamic> json) =>
      _$CreateScheduleDtoFromJson(json);
}
