// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'schedule_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Schedule _$ScheduleFromJson(Map<String, dynamic> json) {
  return _Schedule.fromJson(json);
}

/// @nodoc
mixin _$Schedule {
  num get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_full_name')
  String get userFullName => throw _privateConstructorUsedError;
  @JsonKey(name: 'duration_in_mins')
  num get durationInMinutes => throw _privateConstructorUsedError;
  String get subject => throw _privateConstructorUsedError;
  @JsonKey(name: 'datetime_start')
  DateTime get start => throw _privateConstructorUsedError;
  @JsonKey(name: 'datetime_end')
  DateTime get end => throw _privateConstructorUsedError;
  @JsonKey(name: 'user')
  num get userId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ScheduleCopyWith<Schedule> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScheduleCopyWith<$Res> {
  factory $ScheduleCopyWith(Schedule value, $Res Function(Schedule) then) =
      _$ScheduleCopyWithImpl<$Res, Schedule>;
  @useResult
  $Res call(
      {num id,
      @JsonKey(name: 'user_full_name') String userFullName,
      @JsonKey(name: 'duration_in_mins') num durationInMinutes,
      String subject,
      @JsonKey(name: 'datetime_start') DateTime start,
      @JsonKey(name: 'datetime_end') DateTime end,
      @JsonKey(name: 'user') num userId});
}

/// @nodoc
class _$ScheduleCopyWithImpl<$Res, $Val extends Schedule>
    implements $ScheduleCopyWith<$Res> {
  _$ScheduleCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userFullName = null,
    Object? durationInMinutes = null,
    Object? subject = null,
    Object? start = null,
    Object? end = null,
    Object? userId = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as num,
      userFullName: null == userFullName
          ? _value.userFullName
          : userFullName // ignore: cast_nullable_to_non_nullable
              as String,
      durationInMinutes: null == durationInMinutes
          ? _value.durationInMinutes
          : durationInMinutes // ignore: cast_nullable_to_non_nullable
              as num,
      subject: null == subject
          ? _value.subject
          : subject // ignore: cast_nullable_to_non_nullable
              as String,
      start: null == start
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as DateTime,
      end: null == end
          ? _value.end
          : end // ignore: cast_nullable_to_non_nullable
              as DateTime,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as num,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ScheduleCopyWith<$Res> implements $ScheduleCopyWith<$Res> {
  factory _$$_ScheduleCopyWith(
          _$_Schedule value, $Res Function(_$_Schedule) then) =
      __$$_ScheduleCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {num id,
      @JsonKey(name: 'user_full_name') String userFullName,
      @JsonKey(name: 'duration_in_mins') num durationInMinutes,
      String subject,
      @JsonKey(name: 'datetime_start') DateTime start,
      @JsonKey(name: 'datetime_end') DateTime end,
      @JsonKey(name: 'user') num userId});
}

/// @nodoc
class __$$_ScheduleCopyWithImpl<$Res>
    extends _$ScheduleCopyWithImpl<$Res, _$_Schedule>
    implements _$$_ScheduleCopyWith<$Res> {
  __$$_ScheduleCopyWithImpl(
      _$_Schedule _value, $Res Function(_$_Schedule) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userFullName = null,
    Object? durationInMinutes = null,
    Object? subject = null,
    Object? start = null,
    Object? end = null,
    Object? userId = null,
  }) {
    return _then(_$_Schedule(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as num,
      userFullName: null == userFullName
          ? _value.userFullName
          : userFullName // ignore: cast_nullable_to_non_nullable
              as String,
      durationInMinutes: null == durationInMinutes
          ? _value.durationInMinutes
          : durationInMinutes // ignore: cast_nullable_to_non_nullable
              as num,
      subject: null == subject
          ? _value.subject
          : subject // ignore: cast_nullable_to_non_nullable
              as String,
      start: null == start
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as DateTime,
      end: null == end
          ? _value.end
          : end // ignore: cast_nullable_to_non_nullable
              as DateTime,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as num,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Schedule extends _Schedule {
  const _$_Schedule(
      {required this.id,
      @JsonKey(name: 'user_full_name') required this.userFullName,
      @JsonKey(name: 'duration_in_mins') required this.durationInMinutes,
      required this.subject,
      @JsonKey(name: 'datetime_start') required this.start,
      @JsonKey(name: 'datetime_end') required this.end,
      @JsonKey(name: 'user') required this.userId})
      : super._();

  factory _$_Schedule.fromJson(Map<String, dynamic> json) =>
      _$$_ScheduleFromJson(json);

  @override
  final num id;
  @override
  @JsonKey(name: 'user_full_name')
  final String userFullName;
  @override
  @JsonKey(name: 'duration_in_mins')
  final num durationInMinutes;
  @override
  final String subject;
  @override
  @JsonKey(name: 'datetime_start')
  final DateTime start;
  @override
  @JsonKey(name: 'datetime_end')
  final DateTime end;
  @override
  @JsonKey(name: 'user')
  final num userId;

  @override
  String toString() {
    return 'Schedule(id: $id, userFullName: $userFullName, durationInMinutes: $durationInMinutes, subject: $subject, start: $start, end: $end, userId: $userId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Schedule &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userFullName, userFullName) ||
                other.userFullName == userFullName) &&
            (identical(other.durationInMinutes, durationInMinutes) ||
                other.durationInMinutes == durationInMinutes) &&
            (identical(other.subject, subject) || other.subject == subject) &&
            (identical(other.start, start) || other.start == start) &&
            (identical(other.end, end) || other.end == end) &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, userFullName,
      durationInMinutes, subject, start, end, userId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ScheduleCopyWith<_$_Schedule> get copyWith =>
      __$$_ScheduleCopyWithImpl<_$_Schedule>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ScheduleToJson(
      this,
    );
  }
}

abstract class _Schedule extends Schedule {
  const factory _Schedule(
      {required final num id,
      @JsonKey(name: 'user_full_name') required final String userFullName,
      @JsonKey(name: 'duration_in_mins') required final num durationInMinutes,
      required final String subject,
      @JsonKey(name: 'datetime_start') required final DateTime start,
      @JsonKey(name: 'datetime_end') required final DateTime end,
      @JsonKey(name: 'user') required final num userId}) = _$_Schedule;
  const _Schedule._() : super._();

  factory _Schedule.fromJson(Map<String, dynamic> json) = _$_Schedule.fromJson;

  @override
  num get id;
  @override
  @JsonKey(name: 'user_full_name')
  String get userFullName;
  @override
  @JsonKey(name: 'duration_in_mins')
  num get durationInMinutes;
  @override
  String get subject;
  @override
  @JsonKey(name: 'datetime_start')
  DateTime get start;
  @override
  @JsonKey(name: 'datetime_end')
  DateTime get end;
  @override
  @JsonKey(name: 'user')
  num get userId;
  @override
  @JsonKey(ignore: true)
  _$$_ScheduleCopyWith<_$_Schedule> get copyWith =>
      throw _privateConstructorUsedError;
}
