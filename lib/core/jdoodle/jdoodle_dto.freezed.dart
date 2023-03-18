// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'jdoodle_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ExecuteCodeDto _$ExecuteCodeDtoFromJson(Map<String, dynamic> json) {
  return _ExecuteCodeDto.fromJson(json);
}

/// @nodoc
mixin _$ExecuteCodeDto {
  String get clientId => throw _privateConstructorUsedError;
  String get clientSecret => throw _privateConstructorUsedError;
  String get script => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: 'askit')
  String get stdin => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: 'java')
  String get language => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: '0')
  String get versionIndex => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ExecuteCodeDtoCopyWith<ExecuteCodeDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExecuteCodeDtoCopyWith<$Res> {
  factory $ExecuteCodeDtoCopyWith(
          ExecuteCodeDto value, $Res Function(ExecuteCodeDto) then) =
      _$ExecuteCodeDtoCopyWithImpl<$Res, ExecuteCodeDto>;
  @useResult
  $Res call(
      {String clientId,
      String clientSecret,
      String script,
      @JsonKey(defaultValue: 'askit') String stdin,
      @JsonKey(defaultValue: 'java') String language,
      @JsonKey(defaultValue: '0') String versionIndex});
}

/// @nodoc
class _$ExecuteCodeDtoCopyWithImpl<$Res, $Val extends ExecuteCodeDto>
    implements $ExecuteCodeDtoCopyWith<$Res> {
  _$ExecuteCodeDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? clientId = null,
    Object? clientSecret = null,
    Object? script = null,
    Object? stdin = null,
    Object? language = null,
    Object? versionIndex = null,
  }) {
    return _then(_value.copyWith(
      clientId: null == clientId
          ? _value.clientId
          : clientId // ignore: cast_nullable_to_non_nullable
              as String,
      clientSecret: null == clientSecret
          ? _value.clientSecret
          : clientSecret // ignore: cast_nullable_to_non_nullable
              as String,
      script: null == script
          ? _value.script
          : script // ignore: cast_nullable_to_non_nullable
              as String,
      stdin: null == stdin
          ? _value.stdin
          : stdin // ignore: cast_nullable_to_non_nullable
              as String,
      language: null == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
      versionIndex: null == versionIndex
          ? _value.versionIndex
          : versionIndex // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ExecuteCodeDtoCopyWith<$Res>
    implements $ExecuteCodeDtoCopyWith<$Res> {
  factory _$$_ExecuteCodeDtoCopyWith(
          _$_ExecuteCodeDto value, $Res Function(_$_ExecuteCodeDto) then) =
      __$$_ExecuteCodeDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String clientId,
      String clientSecret,
      String script,
      @JsonKey(defaultValue: 'askit') String stdin,
      @JsonKey(defaultValue: 'java') String language,
      @JsonKey(defaultValue: '0') String versionIndex});
}

/// @nodoc
class __$$_ExecuteCodeDtoCopyWithImpl<$Res>
    extends _$ExecuteCodeDtoCopyWithImpl<$Res, _$_ExecuteCodeDto>
    implements _$$_ExecuteCodeDtoCopyWith<$Res> {
  __$$_ExecuteCodeDtoCopyWithImpl(
      _$_ExecuteCodeDto _value, $Res Function(_$_ExecuteCodeDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? clientId = null,
    Object? clientSecret = null,
    Object? script = null,
    Object? stdin = null,
    Object? language = null,
    Object? versionIndex = null,
  }) {
    return _then(_$_ExecuteCodeDto(
      clientId: null == clientId
          ? _value.clientId
          : clientId // ignore: cast_nullable_to_non_nullable
              as String,
      clientSecret: null == clientSecret
          ? _value.clientSecret
          : clientSecret // ignore: cast_nullable_to_non_nullable
              as String,
      script: null == script
          ? _value.script
          : script // ignore: cast_nullable_to_non_nullable
              as String,
      stdin: null == stdin
          ? _value.stdin
          : stdin // ignore: cast_nullable_to_non_nullable
              as String,
      language: null == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
      versionIndex: null == versionIndex
          ? _value.versionIndex
          : versionIndex // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ExecuteCodeDto extends _ExecuteCodeDto {
  const _$_ExecuteCodeDto(
      {required this.clientId,
      required this.clientSecret,
      required this.script,
      @JsonKey(defaultValue: 'askit') required this.stdin,
      @JsonKey(defaultValue: 'java') required this.language,
      @JsonKey(defaultValue: '0') required this.versionIndex})
      : super._();

  factory _$_ExecuteCodeDto.fromJson(Map<String, dynamic> json) =>
      _$$_ExecuteCodeDtoFromJson(json);

  @override
  final String clientId;
  @override
  final String clientSecret;
  @override
  final String script;
  @override
  @JsonKey(defaultValue: 'askit')
  final String stdin;
  @override
  @JsonKey(defaultValue: 'java')
  final String language;
  @override
  @JsonKey(defaultValue: '0')
  final String versionIndex;

  @override
  String toString() {
    return 'ExecuteCodeDto(clientId: $clientId, clientSecret: $clientSecret, script: $script, stdin: $stdin, language: $language, versionIndex: $versionIndex)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ExecuteCodeDto &&
            (identical(other.clientId, clientId) ||
                other.clientId == clientId) &&
            (identical(other.clientSecret, clientSecret) ||
                other.clientSecret == clientSecret) &&
            (identical(other.script, script) || other.script == script) &&
            (identical(other.stdin, stdin) || other.stdin == stdin) &&
            (identical(other.language, language) ||
                other.language == language) &&
            (identical(other.versionIndex, versionIndex) ||
                other.versionIndex == versionIndex));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, clientId, clientSecret, script,
      stdin, language, versionIndex);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ExecuteCodeDtoCopyWith<_$_ExecuteCodeDto> get copyWith =>
      __$$_ExecuteCodeDtoCopyWithImpl<_$_ExecuteCodeDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ExecuteCodeDtoToJson(
      this,
    );
  }
}

abstract class _ExecuteCodeDto extends ExecuteCodeDto {
  const factory _ExecuteCodeDto(
          {required final String clientId,
          required final String clientSecret,
          required final String script,
          @JsonKey(defaultValue: 'askit') required final String stdin,
          @JsonKey(defaultValue: 'java') required final String language,
          @JsonKey(defaultValue: '0') required final String versionIndex}) =
      _$_ExecuteCodeDto;
  const _ExecuteCodeDto._() : super._();

  factory _ExecuteCodeDto.fromJson(Map<String, dynamic> json) =
      _$_ExecuteCodeDto.fromJson;

  @override
  String get clientId;
  @override
  String get clientSecret;
  @override
  String get script;
  @override
  @JsonKey(defaultValue: 'askit')
  String get stdin;
  @override
  @JsonKey(defaultValue: 'java')
  String get language;
  @override
  @JsonKey(defaultValue: '0')
  String get versionIndex;
  @override
  @JsonKey(ignore: true)
  _$$_ExecuteCodeDtoCopyWith<_$_ExecuteCodeDto> get copyWith =>
      throw _privateConstructorUsedError;
}
