import 'package:ask_it/core/schedule/schedule_dto.dart';
import 'package:ask_it/core/schedule/schedule_repository.dart';
import 'package:fpdart/fpdart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../basic_error.dart';
import '../callable_action.dart';
import '../types.dart';
import 'schedule_model.dart';

part 'schedule_controller.g.dart';

@riverpod
Future<List<Schedule>> schedules(SchedulesRef ref) async {
  final scheduleRepository = ref.watch(scheduleRepositoryProvider);
  final schedules = await scheduleRepository.getSchedules();
  return schedules;
}

@riverpod
CallableAction<EitherResponse<bool>, CreateScheduleDto> createSchedule(CreateScheduleRef ref) {
  final scheduleRepository = ref.watch(scheduleRepositoryProvider);
  return CallableAction((dto) async {
    try {
      await scheduleRepository.createSchedule(dto);
      return right(true);
    } catch (e) {
      if (e is BasicError) {
        return left(e);
      }
      return left(BasicError(e.toString()));
    } finally {
      ref.invalidate(schedulesProvider);
    }
  });
}

@riverpod
CallableAction<EitherResponse<bool>, CreateScheduleDto> editSchedule(EditScheduleRef ref, num id) {
  final scheduleRepository = ref.watch(scheduleRepositoryProvider);
  return CallableAction((dto) async {
    try {
      await scheduleRepository.editSchedule(id, dto);
      return right(true);
    } catch (e) {
      if (e is BasicError) {
        return left(e);
      }
      return left(BasicError(e.toString()));
    } finally {
      ref.invalidate(schedulesProvider);
    }
  });
}

@riverpod
CallableAction<EitherResponse<bool>, void> deleteSchedule(DeleteScheduleRef ref, num id) {
  final scheduleRepository = ref.watch(scheduleRepositoryProvider);
  return CallableAction((_) async {
    try {
      await scheduleRepository.deleteSchedule(id);
      return right(true);
    } catch (e) {
      if (e is BasicError) {
        return left(e);
      }
      return left(BasicError(e.toString()));
    } finally {
      ref.invalidate(schedulesProvider);
    }
  });
}
