// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'appointment_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// ignore_for_file: avoid_private_typedef_functions, non_constant_identifier_names, subtype_of_sealed_class, invalid_use_of_internal_member, unused_element, constant_identifier_names, unnecessary_raw_strings, library_private_types_in_public_api

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

String _$myAppointmentsHash() => r'7e47dc6dd73e5b77d3aedf1d3157aa9a7959b3a4';

/// See also [myAppointments].
final myAppointmentsProvider = AutoDisposeFutureProvider<List<Appointment>>(
  myAppointments,
  name: r'myAppointmentsProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$myAppointmentsHash,
);
typedef MyAppointmentsRef = AutoDisposeFutureProviderRef<List<Appointment>>;
String _$myAppointmentsTodayHash() =>
    r'0610a664c3e26e16c29239172950581ec952811a';

/// See also [myAppointmentsToday].
final myAppointmentsTodayProvider =
    AutoDisposeFutureProvider<List<Appointment>>(
  myAppointmentsToday,
  name: r'myAppointmentsTodayProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$myAppointmentsTodayHash,
);
typedef MyAppointmentsTodayRef
    = AutoDisposeFutureProviderRef<List<Appointment>>;
String _$myAppointmentsTomorrowHash() =>
    r'77a7334474d67eacfae06192c7f69ccff8ba50d3';

/// See also [myAppointmentsTomorrow].
final myAppointmentsTomorrowProvider =
    AutoDisposeFutureProvider<List<Appointment>>(
  myAppointmentsTomorrow,
  name: r'myAppointmentsTomorrowProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$myAppointmentsTomorrowHash,
);
typedef MyAppointmentsTomorrowRef
    = AutoDisposeFutureProviderRef<List<Appointment>>;
String _$createAppointmentHash() => r'e70be71046e56b1496e52ebea772eb6ea768a876';

/// See also [createAppointment].
final createAppointmentProvider = AutoDisposeProvider<
    CallableAction<Either<BasicError, bool>, CreateAppointmentDto>>(
  createAppointment,
  name: r'createAppointmentProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$createAppointmentHash,
);
typedef CreateAppointmentRef = AutoDisposeProviderRef<
    CallableAction<Either<BasicError, bool>, CreateAppointmentDto>>;
