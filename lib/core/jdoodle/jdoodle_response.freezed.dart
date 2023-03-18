// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'jdoodle_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ExecuteCodeResponse _$ExecuteCodeResponseFromJson(Map<String, dynamic> json) {
  return _ExecuteCodeResponse.fromJson(json);
}

/// @nodoc
mixin _$ExecuteCodeResponse {
  String get output => throw _privateConstructorUsedError;
  num get statusCode => throw _privateConstructorUsedError;
  String? get memory => throw _privateConstructorUsedError;
  String? get cpuTime => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ExecuteCodeResponseCopyWith<ExecuteCodeResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExecuteCodeResponseCopyWith<$Res> {
  factory $ExecuteCodeResponseCopyWith(
          ExecuteCodeResponse value, $Res Function(ExecuteCodeResponse) then) =
      _$ExecuteCodeResponseCopyWithImpl<$Res, ExecuteCodeResponse>;
  @useResult
  $Res call({String output, num statusCode, String? memory, String? cpuTime});
}

/// @nodoc
class _$ExecuteCodeResponseCopyWithImpl<$Res, $Val extends ExecuteCodeResponse>
    implements $ExecuteCodeResponseCopyWith<$Res> {
  _$ExecuteCodeResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? output = null,
    Object? statusCode = null,
    Object? memory = freezed,
    Object? cpuTime = freezed,
  }) {
    return _then(_value.copyWith(
      output: null == output
          ? _value.output
          : output // ignore: cast_nullable_to_non_nullable
              as String,
      statusCode: null == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as num,
      memory: freezed == memory
          ? _value.memory
          : memory // ignore: cast_nullable_to_non_nullable
              as String?,
      cpuTime: freezed == cpuTime
          ? _value.cpuTime
          : cpuTime // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ExecuteCodeResponseCopyWith<$Res>
    implements $ExecuteCodeResponseCopyWith<$Res> {
  factory _$$_ExecuteCodeResponseCopyWith(_$_ExecuteCodeResponse value,
          $Res Function(_$_ExecuteCodeResponse) then) =
      __$$_ExecuteCodeResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String output, num statusCode, String? memory, String? cpuTime});
}

/// @nodoc
class __$$_ExecuteCodeResponseCopyWithImpl<$Res>
    extends _$ExecuteCodeResponseCopyWithImpl<$Res, _$_ExecuteCodeResponse>
    implements _$$_ExecuteCodeResponseCopyWith<$Res> {
  __$$_ExecuteCodeResponseCopyWithImpl(_$_ExecuteCodeResponse _value,
      $Res Function(_$_ExecuteCodeResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? output = null,
    Object? statusCode = null,
    Object? memory = freezed,
    Object? cpuTime = freezed,
  }) {
    return _then(_$_ExecuteCodeResponse(
      output: null == output
          ? _value.output
          : output // ignore: cast_nullable_to_non_nullable
              as String,
      statusCode: null == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as num,
      memory: freezed == memory
          ? _value.memory
          : memory // ignore: cast_nullable_to_non_nullable
              as String?,
      cpuTime: freezed == cpuTime
          ? _value.cpuTime
          : cpuTime // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ExecuteCodeResponse extends _ExecuteCodeResponse {
  const _$_ExecuteCodeResponse(
      {required this.output,
      required this.statusCode,
      required this.memory,
      required this.cpuTime})
      : super._();

  factory _$_ExecuteCodeResponse.fromJson(Map<String, dynamic> json) =>
      _$$_ExecuteCodeResponseFromJson(json);

  @override
  final String output;
  @override
  final num statusCode;
  @override
  final String? memory;
  @override
  final String? cpuTime;

  @override
  String toString() {
    return 'ExecuteCodeResponse(output: $output, statusCode: $statusCode, memory: $memory, cpuTime: $cpuTime)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ExecuteCodeResponse &&
            (identical(other.output, output) || other.output == output) &&
            (identical(other.statusCode, statusCode) ||
                other.statusCode == statusCode) &&
            (identical(other.memory, memory) || other.memory == memory) &&
            (identical(other.cpuTime, cpuTime) || other.cpuTime == cpuTime));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, output, statusCode, memory, cpuTime);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ExecuteCodeResponseCopyWith<_$_ExecuteCodeResponse> get copyWith =>
      __$$_ExecuteCodeResponseCopyWithImpl<_$_ExecuteCodeResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ExecuteCodeResponseToJson(
      this,
    );
  }
}

abstract class _ExecuteCodeResponse extends ExecuteCodeResponse {
  const factory _ExecuteCodeResponse(
      {required final String output,
      required final num statusCode,
      required final String? memory,
      required final String? cpuTime}) = _$_ExecuteCodeResponse;
  const _ExecuteCodeResponse._() : super._();

  factory _ExecuteCodeResponse.fromJson(Map<String, dynamic> json) =
      _$_ExecuteCodeResponse.fromJson;

  @override
  String get output;
  @override
  num get statusCode;
  @override
  String? get memory;
  @override
  String? get cpuTime;
  @override
  @JsonKey(ignore: true)
  _$$_ExecuteCodeResponseCopyWith<_$_ExecuteCodeResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
