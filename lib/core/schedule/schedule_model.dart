// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'schedule_model.freezed.dart';
part 'schedule_model.g.dart';

@freezed
class Schedule with _$Schedule {
  const factory Schedule({
    required num id,
    @JsonKey(name: 'user_full_name') required String userFullName,
    @JsonKey(name: 'duration_in_mins') required num durationInMinutes,
    required String subject,
    @JsonKey(name: 'datetime_start') required DateTime start,
    @JsonKey(name: 'datetime_end') required DateTime end,
    @JsonKey(name: 'user') required num userId,
  }) = _Schedule;

  const Schedule._();

  factory Schedule.fromJson(Map<String, dynamic> json) => _$ScheduleFromJson(json);
}
