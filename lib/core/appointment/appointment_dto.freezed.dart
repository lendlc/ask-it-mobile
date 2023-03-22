// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'appointment_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CreateAppointmentDto _$CreateAppointmentDtoFromJson(Map<String, dynamic> json) {
  return _CreateAppointmentDto.fromJson(json);
}

/// @nodoc
mixin _$CreateAppointmentDto {
  @JsonKey(defaultValue: 'approved')
  String get status =>
      throw _privateConstructorUsedError; // @JsonKey(nullable: true, defaultValue: null) required String? description,
  @JsonKey(name: 'tutor_schedule')
  num get scheduleId => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_archived', defaultValue: false)
  bool get isArchived => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateAppointmentDtoCopyWith<CreateAppointmentDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateAppointmentDtoCopyWith<$Res> {
  factory $CreateAppointmentDtoCopyWith(CreateAppointmentDto value,
          $Res Function(CreateAppointmentDto) then) =
      _$CreateAppointmentDtoCopyWithImpl<$Res, CreateAppointmentDto>;
  @useResult
  $Res call(
      {@JsonKey(defaultValue: 'approved') String status,
      @JsonKey(name: 'tutor_schedule') num scheduleId,
      @JsonKey(name: 'is_archived', defaultValue: false) bool isArchived});
}

/// @nodoc
class _$CreateAppointmentDtoCopyWithImpl<$Res,
        $Val extends CreateAppointmentDto>
    implements $CreateAppointmentDtoCopyWith<$Res> {
  _$CreateAppointmentDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? scheduleId = null,
    Object? isArchived = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      scheduleId: null == scheduleId
          ? _value.scheduleId
          : scheduleId // ignore: cast_nullable_to_non_nullable
              as num,
      isArchived: null == isArchived
          ? _value.isArchived
          : isArchived // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CreateAppointmentDtoCopyWith<$Res>
    implements $CreateAppointmentDtoCopyWith<$Res> {
  factory _$$_CreateAppointmentDtoCopyWith(_$_CreateAppointmentDto value,
          $Res Function(_$_CreateAppointmentDto) then) =
      __$$_CreateAppointmentDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(defaultValue: 'approved') String status,
      @JsonKey(name: 'tutor_schedule') num scheduleId,
      @JsonKey(name: 'is_archived', defaultValue: false) bool isArchived});
}

/// @nodoc
class __$$_CreateAppointmentDtoCopyWithImpl<$Res>
    extends _$CreateAppointmentDtoCopyWithImpl<$Res, _$_CreateAppointmentDto>
    implements _$$_CreateAppointmentDtoCopyWith<$Res> {
  __$$_CreateAppointmentDtoCopyWithImpl(_$_CreateAppointmentDto _value,
      $Res Function(_$_CreateAppointmentDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? scheduleId = null,
    Object? isArchived = null,
  }) {
    return _then(_$_CreateAppointmentDto(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      scheduleId: null == scheduleId
          ? _value.scheduleId
          : scheduleId // ignore: cast_nullable_to_non_nullable
              as num,
      isArchived: null == isArchived
          ? _value.isArchived
          : isArchived // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CreateAppointmentDto extends _CreateAppointmentDto {
  const _$_CreateAppointmentDto(
      {@JsonKey(defaultValue: 'approved')
          required this.status,
      @JsonKey(name: 'tutor_schedule')
          required this.scheduleId,
      @JsonKey(name: 'is_archived', defaultValue: false)
          required this.isArchived})
      : super._();

  factory _$_CreateAppointmentDto.fromJson(Map<String, dynamic> json) =>
      _$$_CreateAppointmentDtoFromJson(json);

  @override
  @JsonKey(defaultValue: 'approved')
  final String status;
// @JsonKey(nullable: true, defaultValue: null) required String? description,
  @override
  @JsonKey(name: 'tutor_schedule')
  final num scheduleId;
  @override
  @JsonKey(name: 'is_archived', defaultValue: false)
  final bool isArchived;

  @override
  String toString() {
    return 'CreateAppointmentDto(status: $status, scheduleId: $scheduleId, isArchived: $isArchived)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CreateAppointmentDto &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.scheduleId, scheduleId) ||
                other.scheduleId == scheduleId) &&
            (identical(other.isArchived, isArchived) ||
                other.isArchived == isArchived));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status, scheduleId, isArchived);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CreateAppointmentDtoCopyWith<_$_CreateAppointmentDto> get copyWith =>
      __$$_CreateAppointmentDtoCopyWithImpl<_$_CreateAppointmentDto>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CreateAppointmentDtoToJson(
      this,
    );
  }
}

abstract class _CreateAppointmentDto extends CreateAppointmentDto {
  const factory _CreateAppointmentDto(
      {@JsonKey(defaultValue: 'approved')
          required final String status,
      @JsonKey(name: 'tutor_schedule')
          required final num scheduleId,
      @JsonKey(name: 'is_archived', defaultValue: false)
          required final bool isArchived}) = _$_CreateAppointmentDto;
  const _CreateAppointmentDto._() : super._();

  factory _CreateAppointmentDto.fromJson(Map<String, dynamic> json) =
      _$_CreateAppointmentDto.fromJson;

  @override
  @JsonKey(defaultValue: 'approved')
  String get status;
  @override // @JsonKey(nullable: true, defaultValue: null) required String? description,
  @JsonKey(name: 'tutor_schedule')
  num get scheduleId;
  @override
  @JsonKey(name: 'is_archived', defaultValue: false)
  bool get isArchived;
  @override
  @JsonKey(ignore: true)
  _$$_CreateAppointmentDtoCopyWith<_$_CreateAppointmentDto> get copyWith =>
      throw _privateConstructorUsedError;
}
