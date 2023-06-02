import 'package:ask_it/core/schedule/schedule_dto.dart';
import 'package:ask_it/core/schedule/schedule_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../api_call_mixin.dart';
import '../client.dart';

part 'schedule_repository.g.dart';

class ScheduleRepository with ApiCallMixin {
  ScheduleRepository(this._client);

  final RestClient _client;

  Future<List<Schedule>> getMySchedules() async {
    final now = DateTime.now();
    final today = DateTime(now.year, now.month, now.day);
    final schedules = await apiCall(_client.getMySchedules);
    var validSchedules = schedules
        .where((schedule) => schedule.start.isAfter(today.subtract(Duration(days: 1))))
        .toList(growable: false);

    validSchedules.sort((a, b) => a.start.compareTo(b.start));

    return validSchedules;
  }

  Future<List<Schedule>> getSubjectSchedules(String subject) async {
    final now = DateTime.now();
    final today = DateTime(now.year, now.month, now.day);
    final schedules = await apiCallArgs<List<Schedule>, String>(
      _client.getSubjectSchedules,
      subject,
    );
    return schedules
        .where((schedule) =>
            schedule.isAvailable && schedule.start.isAfter(today.subtract(Duration(days: 1))))
        .toList(growable: false);
  }

  Future<void> createSchedule(CreateScheduleDto dto) => apiCallArgs<void, CreateScheduleDto>(
        _client.createSchedule,
        dto,
      );

  Future<void> editSchedule(num id, CreateScheduleDto dto) =>
      apiCallArgs2<void, num, CreateScheduleDto>(
        _client.updateSchedule,
        id,
        dto,
      );

  Future<void> deleteSchedule(num id) => apiCallArgs<void, num>(
        _client.deleteSchedule,
        id,
      );
}

@riverpod
ScheduleRepository scheduleRepository(ScheduleRepositoryRef ref) {
  final client = ref.watch(RestClient.provider);
  return ScheduleRepository(client);
}
