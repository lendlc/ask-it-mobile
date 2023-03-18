// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'schedule_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CreateScheduleDto _$CreateScheduleDtoFromJson(Map<String, dynamic> json) {
  return _CreateScheduleDto.fromJson(json);
}

/// @nodoc
mixin _$CreateScheduleDto {
  String get subject => throw _privateConstructorUsedError;
  @JsonKey(name: 'datetime_start')
  DateTime get start => throw _privateConstructorUsedError;
  @JsonKey(name: 'datetime_end')
  DateTime get end => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_available', defaultValue: true)
  bool get isAvailable => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateScheduleDtoCopyWith<CreateScheduleDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateScheduleDtoCopyWith<$Res> {
  factory $CreateScheduleDtoCopyWith(
          CreateScheduleDto value, $Res Function(CreateScheduleDto) then) =
      _$CreateScheduleDtoCopyWithImpl<$Res, CreateScheduleDto>;
  @useResult
  $Res call(
      {String subject,
      @JsonKey(name: 'datetime_start') DateTime start,
      @JsonKey(name: 'datetime_end') DateTime end,
      @JsonKey(name: 'is_available', defaultValue: true) bool isAvailable});
}

/// @nodoc
class _$CreateScheduleDtoCopyWithImpl<$Res, $Val extends CreateScheduleDto>
    implements $CreateScheduleDtoCopyWith<$Res> {
  _$CreateScheduleDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? subject = null,
    Object? start = null,
    Object? end = null,
    Object? isAvailable = null,
  }) {
    return _then(_value.copyWith(
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
      isAvailable: null == isAvailable
          ? _value.isAvailable
          : isAvailable // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CreateScheduleDtoCopyWith<$Res>
    implements $CreateScheduleDtoCopyWith<$Res> {
  factory _$$_CreateScheduleDtoCopyWith(_$_CreateScheduleDto value,
          $Res Function(_$_CreateScheduleDto) then) =
      __$$_CreateScheduleDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String subject,
      @JsonKey(name: 'datetime_start') DateTime start,
      @JsonKey(name: 'datetime_end') DateTime end,
      @JsonKey(name: 'is_available', defaultValue: true) bool isAvailable});
}

/// @nodoc
class __$$_CreateScheduleDtoCopyWithImpl<$Res>
    extends _$CreateScheduleDtoCopyWithImpl<$Res, _$_CreateScheduleDto>
    implements _$$_CreateScheduleDtoCopyWith<$Res> {
  __$$_CreateScheduleDtoCopyWithImpl(
      _$_CreateScheduleDto _value, $Res Function(_$_CreateScheduleDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? subject = null,
    Object? start = null,
    Object? end = null,
    Object? isAvailable = null,
  }) {
    return _then(_$_CreateScheduleDto(
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
      isAvailable: null == isAvailable
          ? _value.isAvailable
          : isAvailable // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CreateScheduleDto extends _CreateScheduleDto {
  const _$_CreateScheduleDto(
      {required this.subject,
      @JsonKey(name: 'datetime_start')
          required this.start,
      @JsonKey(name: 'datetime_end')
          required this.end,
      @JsonKey(name: 'is_available', defaultValue: true)
          required this.isAvailable})
      : super._();

  factory _$_CreateScheduleDto.fromJson(Map<String, dynamic> json) =>
      _$$_CreateScheduleDtoFromJson(json);

  @override
  final String subject;
  @override
  @JsonKey(name: 'datetime_start')
  final DateTime start;
  @override
  @JsonKey(name: 'datetime_end')
  final DateTime end;
  @override
  @JsonKey(name: 'is_available', defaultValue: true)
  final bool isAvailable;

  @override
  String toString() {
    return 'CreateScheduleDto(subject: $subject, start: $start, end: $end, isAvailable: $isAvailable)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CreateScheduleDto &&
            (identical(other.subject, subject) || other.subject == subject) &&
            (identical(other.start, start) || other.start == start) &&
            (identical(other.end, end) || other.end == end) &&
            (identical(other.isAvailable, isAvailable) ||
                other.isAvailable == isAvailable));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, subject, start, end, isAvailable);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CreateScheduleDtoCopyWith<_$_CreateScheduleDto> get copyWith =>
      __$$_CreateScheduleDtoCopyWithImpl<_$_CreateScheduleDto>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CreateScheduleDtoToJson(
      this,
    );
  }
}

abstract class _CreateScheduleDto extends CreateScheduleDto {
  const factory _CreateScheduleDto(
      {required final String subject,
      @JsonKey(name: 'datetime_start')
          required final DateTime start,
      @JsonKey(name: 'datetime_end')
          required final DateTime end,
      @JsonKey(name: 'is_available', defaultValue: true)
          required final bool isAvailable}) = _$_CreateScheduleDto;
  const _CreateScheduleDto._() : super._();

  factory _CreateScheduleDto.fromJson(Map<String, dynamic> json) =
      _$_CreateScheduleDto.fromJson;

  @override
  String get subject;
  @override
  @JsonKey(name: 'datetime_start')
  DateTime get start;
  @override
  @JsonKey(name: 'datetime_end')
  DateTime get end;
  @override
  @JsonKey(name: 'is_available', defaultValue: true)
  bool get isAvailable;
  @override
  @JsonKey(ignore: true)
  _$$_CreateScheduleDtoCopyWith<_$_CreateScheduleDto> get copyWith =>
      throw _privateConstructorUsedError;
}
