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
    @JsonKey(name: 'is_available') required bool isAvailable,
  }) = _Schedule;

  const Schedule._();

  factory Schedule.fromJson(Map<String, dynamic> json) => _$ScheduleFromJson(json);

  Tutor get tutor => Tutor(id: userId, name: userFullName);
}

@freezed
class Tutor with _$Tutor {
  factory Tutor({
    required num id,
    required String name,
  }) = _Tutor;

  const Tutor._();
}
