import 'package:ask_it/core/appointment/appointment_dto.dart';
import 'package:ask_it/core/appointment/appointment_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../api_call_mixin.dart';
import '../client.dart';

part 'appointment_repository.g.dart';

class AppointmentRepository with ApiCallMixin {
  AppointmentRepository(this._client);

  final RestClient _client;

  Future<void> createAppointment(CreateAppointmentDto dto) =>
      apiCallArgs<void, CreateAppointmentDto>(_client.createAppointment, dto);

  Future<List<Appointment>> getMyAppointments() => apiCall(_client.getMyAppointments);
}

@riverpod
AppointmentRepository appointmentRepository(AppointmentRepositoryRef ref) {
  final client = ref.watch(RestClient.provider);
  return AppointmentRepository(client);
}
