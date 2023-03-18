// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'schedule_controller.dart';

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

String _$schedulesHash() => r'41a844d4dc6a649d64131dd5c27fe503940872b8';

/// See also [schedules].
final schedulesProvider = AutoDisposeFutureProvider<List<Schedule>>(
  schedules,
  name: r'schedulesProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$schedulesHash,
);
typedef SchedulesRef = AutoDisposeFutureProviderRef<List<Schedule>>;
String _$createScheduleHash() => r'7326b219969016ae78ae6111c03cd0d76eb78382';

/// See also [createSchedule].
final createScheduleProvider = AutoDisposeProvider<
    CallableAction<Either<BasicError, bool>, CreateScheduleDto>>(
  createSchedule,
  name: r'createScheduleProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$createScheduleHash,
);
typedef CreateScheduleRef = AutoDisposeProviderRef<
    CallableAction<Either<BasicError, bool>, CreateScheduleDto>>;
String _$editScheduleHash() => r'dde16807d4f75ba760e26ca0e1a36a0c06b9cfeb';

/// See also [editSchedule].
class EditScheduleProvider extends AutoDisposeProvider<
    CallableAction<Either<BasicError, bool>, CreateScheduleDto>> {
  EditScheduleProvider(
    this.id,
  ) : super(
          (ref) => editSchedule(
            ref,
            id,
          ),
          from: editScheduleProvider,
          name: r'editScheduleProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$editScheduleHash,
        );

  final num id;

  @override
  bool operator ==(Object other) {
    return other is EditScheduleProvider && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }
}

typedef EditScheduleRef = AutoDisposeProviderRef<
    CallableAction<Either<BasicError, bool>, CreateScheduleDto>>;

/// See also [editSchedule].
final editScheduleProvider = EditScheduleFamily();

class EditScheduleFamily extends Family<
    CallableAction<Either<BasicError, bool>, CreateScheduleDto>> {
  EditScheduleFamily();

  EditScheduleProvider call(
    num id,
  ) {
    return EditScheduleProvider(
      id,
    );
  }

  @override
  AutoDisposeProvider<
          CallableAction<Either<BasicError, bool>, CreateScheduleDto>>
      getProviderOverride(
    covariant EditScheduleProvider provider,
  ) {
    return call(
      provider.id,
    );
  }

  @override
  List<ProviderOrFamily>? get allTransitiveDependencies => null;

  @override
  List<ProviderOrFamily>? get dependencies => null;

  @override
  String? get name => r'editScheduleProvider';
}

String _$deleteScheduleHash() => r'3afa689d1aed892aa25e835bab611af0cf93abdf';

/// See also [deleteSchedule].
class DeleteScheduleProvider extends AutoDisposeProvider<
    CallableAction<Either<BasicError, bool>, void>> {
  DeleteScheduleProvider(
    this.id,
  ) : super(
          (ref) => deleteSchedule(
            ref,
            id,
          ),
          from: deleteScheduleProvider,
          name: r'deleteScheduleProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$deleteScheduleHash,
        );

  final num id;

  @override
  bool operator ==(Object other) {
    return other is DeleteScheduleProvider && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }
}

typedef DeleteScheduleRef
    = AutoDisposeProviderRef<CallableAction<Either<BasicError, bool>, void>>;

/// See also [deleteSchedule].
final deleteScheduleProvider = DeleteScheduleFamily();

class DeleteScheduleFamily
    extends Family<CallableAction<Either<BasicError, bool>, void>> {
  DeleteScheduleFamily();

  DeleteScheduleProvider call(
    num id,
  ) {
    return DeleteScheduleProvider(
      id,
    );
  }

  @override
  AutoDisposeProvider<CallableAction<Either<BasicError, bool>, void>>
      getProviderOverride(
    covariant DeleteScheduleProvider provider,
  ) {
    return call(
      provider.id,
    );
  }

  @override
  List<ProviderOrFamily>? get allTransitiveDependencies => null;

  @override
  List<ProviderOrFamily>? get dependencies => null;

  @override
  String? get name => r'deleteScheduleProvider';
}
