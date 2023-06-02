import 'package:ask_it/core/appointment/appointment_dto.dart';
import 'package:ask_it/core/appointment/appointment_model.dart';
import 'package:ask_it/core/appointment/appointment_repository.dart';
import 'package:ask_it/core/auth/auth_controller.dart';
import 'package:fpdart/fpdart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../basic_error.dart';
import '../callable_action.dart';
import '../types.dart';

part 'appointment_controller.g.dart';

@riverpod
Future<List<Appointment>> myAppointments(MyAppointmentsRef ref) async {
  final loggedInUserId = await ref.watch(loggedInUserIdProvider.future);

  if (loggedInUserId == null) {
    return [];
  }

  final appointmentRepository = ref.watch(appointmentRepositoryProvider);
  final appointments = await appointmentRepository.getMyAppointments();
  return appointments
      .where((appointment) =>
          appointment.tuteeId == loggedInUserId || appointment.tutorId == loggedInUserId)
      .toList();
}

@riverpod
Future<List<Appointment>> myAppointmentsToday(MyAppointmentsTodayRef ref) async {
  final myAppointments = await ref.watch(myAppointmentsProvider.future);
  final today = DateTime.now();
  return myAppointments
      .where((appointment) =>
          appointment.start.year == today.year &&
          appointment.start.month == today.month &&
          appointment.start.day == today.day)
      .toList();
}

@riverpod
Future<List<Appointment>> myAppointmentsTomorrow(MyAppointmentsTomorrowRef ref) async {
  final myAppointments = await ref.watch(myAppointmentsProvider.future);
  final tomorrow = DateTime.now().add(Duration(days: 1));
  return myAppointments
      .where((appointment) =>
          appointment.start.year == tomorrow.year &&
          appointment.start.month == tomorrow.month &&
          appointment.start.day == tomorrow.day)
      .toList();
}

@riverpod
CallableAction<EitherResponse<bool>, CreateAppointmentDto> createAppointment(
    CreateAppointmentRef ref) {
  final appointmentRepository = ref.watch(appointmentRepositoryProvider);
  return CallableAction((dto) async {
    try {
      await appointmentRepository.createAppointment(dto);
      return right(true);
    } catch (e) {
      if (e is BasicError) {
        return left(e);
      }
      return left(BasicError(e.toString()));
    } finally {
      ref.invalidate(myAppointmentsProvider);
    }
  });
}
