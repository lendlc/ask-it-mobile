// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'appointment_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Appointment _$AppointmentFromJson(Map<String, dynamic> json) {
  return _Appointment.fromJson(json);
}

/// @nodoc
mixin _$Appointment {
  num get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'tutor_email')
  String get tutorEmail => throw _privateConstructorUsedError;
  DateTime get start => throw _privateConstructorUsedError;
  DateTime get end => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'tutee')
  num get tuteeId => throw _privateConstructorUsedError;
  @JsonKey(name: 'tutor_schedule')
  num get scheduleId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AppointmentCopyWith<Appointment> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppointmentCopyWith<$Res> {
  factory $AppointmentCopyWith(
          Appointment value, $Res Function(Appointment) then) =
      _$AppointmentCopyWithImpl<$Res, Appointment>;
  @useResult
  $Res call(
      {num id,
      @JsonKey(name: 'tutor_email') String tutorEmail,
      DateTime start,
      DateTime end,
      String status,
      @JsonKey(name: 'tutee') num tuteeId,
      @JsonKey(name: 'tutor_schedule') num scheduleId});
}

/// @nodoc
class _$AppointmentCopyWithImpl<$Res, $Val extends Appointment>
    implements $AppointmentCopyWith<$Res> {
  _$AppointmentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? tutorEmail = null,
    Object? start = null,
    Object? end = null,
    Object? status = null,
    Object? tuteeId = null,
    Object? scheduleId = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as num,
      tutorEmail: null == tutorEmail
          ? _value.tutorEmail
          : tutorEmail // ignore: cast_nullable_to_non_nullable
              as String,
      start: null == start
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as DateTime,
      end: null == end
          ? _value.end
          : end // ignore: cast_nullable_to_non_nullable
              as DateTime,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      tuteeId: null == tuteeId
          ? _value.tuteeId
          : tuteeId // ignore: cast_nullable_to_non_nullable
              as num,
      scheduleId: null == scheduleId
          ? _value.scheduleId
          : scheduleId // ignore: cast_nullable_to_non_nullable
              as num,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AppointmentCopyWith<$Res>
    implements $AppointmentCopyWith<$Res> {
  factory _$$_AppointmentCopyWith(
          _$_Appointment value, $Res Function(_$_Appointment) then) =
      __$$_AppointmentCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {num id,
      @JsonKey(name: 'tutor_email') String tutorEmail,
      DateTime start,
      DateTime end,
      String status,
      @JsonKey(name: 'tutee') num tuteeId,
      @JsonKey(name: 'tutor_schedule') num scheduleId});
}

/// @nodoc
class __$$_AppointmentCopyWithImpl<$Res>
    extends _$AppointmentCopyWithImpl<$Res, _$_Appointment>
    implements _$$_AppointmentCopyWith<$Res> {
  __$$_AppointmentCopyWithImpl(
      _$_Appointment _value, $Res Function(_$_Appointment) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? tutorEmail = null,
    Object? start = null,
    Object? end = null,
    Object? status = null,
    Object? tuteeId = null,
    Object? scheduleId = null,
  }) {
    return _then(_$_Appointment(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as num,
      tutorEmail: null == tutorEmail
          ? _value.tutorEmail
          : tutorEmail // ignore: cast_nullable_to_non_nullable
              as String,
      start: null == start
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as DateTime,
      end: null == end
          ? _value.end
          : end // ignore: cast_nullable_to_non_nullable
              as DateTime,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      tuteeId: null == tuteeId
          ? _value.tuteeId
          : tuteeId // ignore: cast_nullable_to_non_nullable
              as num,
      scheduleId: null == scheduleId
          ? _value.scheduleId
          : scheduleId // ignore: cast_nullable_to_non_nullable
              as num,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Appointment extends _Appointment {
  const _$_Appointment(
      {required this.id,
      @JsonKey(name: 'tutor_email') required this.tutorEmail,
      required this.start,
      required this.end,
      required this.status,
      @JsonKey(name: 'tutee') required this.tuteeId,
      @JsonKey(name: 'tutor_schedule') required this.scheduleId})
      : super._();

  factory _$_Appointment.fromJson(Map<String, dynamic> json) =>
      _$$_AppointmentFromJson(json);

  @override
  final num id;
  @override
  @JsonKey(name: 'tutor_email')
  final String tutorEmail;
  @override
  final DateTime start;
  @override
  final DateTime end;
  @override
  final String status;
  @override
  @JsonKey(name: 'tutee')
  final num tuteeId;
  @override
  @JsonKey(name: 'tutor_schedule')
  final num scheduleId;

  @override
  String toString() {
    return 'Appointment(id: $id, tutorEmail: $tutorEmail, start: $start, end: $end, status: $status, tuteeId: $tuteeId, scheduleId: $scheduleId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Appointment &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.tutorEmail, tutorEmail) ||
                other.tutorEmail == tutorEmail) &&
            (identical(other.start, start) || other.start == start) &&
            (identical(other.end, end) || other.end == end) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.tuteeId, tuteeId) || other.tuteeId == tuteeId) &&
            (identical(other.scheduleId, scheduleId) ||
                other.scheduleId == scheduleId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, tutorEmail, start, end, status, tuteeId, scheduleId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AppointmentCopyWith<_$_Appointment> get copyWith =>
      __$$_AppointmentCopyWithImpl<_$_Appointment>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AppointmentToJson(
      this,
    );
  }
}

abstract class _Appointment extends Appointment {
  const factory _Appointment(
          {required final num id,
          @JsonKey(name: 'tutor_email') required final String tutorEmail,
          required final DateTime start,
          required final DateTime end,
          required final String status,
          @JsonKey(name: 'tutee') required final num tuteeId,
          @JsonKey(name: 'tutor_schedule') required final num scheduleId}) =
      _$_Appointment;
  const _Appointment._() : super._();

  factory _Appointment.fromJson(Map<String, dynamic> json) =
      _$_Appointment.fromJson;

  @override
  num get id;
  @override
  @JsonKey(name: 'tutor_email')
  String get tutorEmail;
  @override
  DateTime get start;
  @override
  DateTime get end;
  @override
  String get status;
  @override
  @JsonKey(name: 'tutee')
  num get tuteeId;
  @override
  @JsonKey(name: 'tutor_schedule')
  num get scheduleId;
  @override
  @JsonKey(ignore: true)
  _$$_AppointmentCopyWith<_$_Appointment> get copyWith =>
      throw _privateConstructorUsedError;
}
