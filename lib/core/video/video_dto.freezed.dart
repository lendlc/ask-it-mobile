// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'video_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UploadVideoDto {
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  File get file => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UploadVideoDtoCopyWith<UploadVideoDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UploadVideoDtoCopyWith<$Res> {
  factory $UploadVideoDtoCopyWith(
          UploadVideoDto value, $Res Function(UploadVideoDto) then) =
      _$UploadVideoDtoCopyWithImpl<$Res, UploadVideoDto>;
  @useResult
  $Res call({String title, String description, File file});
}

/// @nodoc
class _$UploadVideoDtoCopyWithImpl<$Res, $Val extends UploadVideoDto>
    implements $UploadVideoDtoCopyWith<$Res> {
  _$UploadVideoDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = null,
    Object? file = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      file: null == file
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as File,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UploadVideoDtoCopyWith<$Res>
    implements $UploadVideoDtoCopyWith<$Res> {
  factory _$$_UploadVideoDtoCopyWith(
          _$_UploadVideoDto value, $Res Function(_$_UploadVideoDto) then) =
      __$$_UploadVideoDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String title, String description, File file});
}

/// @nodoc
class __$$_UploadVideoDtoCopyWithImpl<$Res>
    extends _$UploadVideoDtoCopyWithImpl<$Res, _$_UploadVideoDto>
    implements _$$_UploadVideoDtoCopyWith<$Res> {
  __$$_UploadVideoDtoCopyWithImpl(
      _$_UploadVideoDto _value, $Res Function(_$_UploadVideoDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = null,
    Object? file = null,
  }) {
    return _then(_$_UploadVideoDto(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      file: null == file
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as File,
    ));
  }
}

/// @nodoc

class _$_UploadVideoDto extends _UploadVideoDto {
  const _$_UploadVideoDto(
      {required this.title, required this.description, required this.file})
      : super._();

  @override
  final String title;
  @override
  final String description;
  @override
  final File file;

  @override
  String toString() {
    return 'UploadVideoDto(title: $title, description: $description, file: $file)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UploadVideoDto &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.file, file) || other.file == file));
  }

  @override
  int get hashCode => Object.hash(runtimeType, title, description, file);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UploadVideoDtoCopyWith<_$_UploadVideoDto> get copyWith =>
      __$$_UploadVideoDtoCopyWithImpl<_$_UploadVideoDto>(this, _$identity);
}

abstract class _UploadVideoDto extends UploadVideoDto {
  const factory _UploadVideoDto(
      {required final String title,
      required final String description,
      required final File file}) = _$_UploadVideoDto;
  const _UploadVideoDto._() : super._();

  @override
  String get title;
  @override
  String get description;
  @override
  File get file;
  @override
  @JsonKey(ignore: true)
  _$$_UploadVideoDtoCopyWith<_$_UploadVideoDto> get copyWith =>
      throw _privateConstructorUsedError;
}

UpdateVideoDto _$UpdateVideoDtoFromJson(Map<String, dynamic> json) {
  return _UpdateVideoDto.fromJson(json);
}

/// @nodoc
mixin _$UpdateVideoDto {
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UpdateVideoDtoCopyWith<UpdateVideoDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateVideoDtoCopyWith<$Res> {
  factory $UpdateVideoDtoCopyWith(
          UpdateVideoDto value, $Res Function(UpdateVideoDto) then) =
      _$UpdateVideoDtoCopyWithImpl<$Res, UpdateVideoDto>;
  @useResult
  $Res call({String title, String description});
}

/// @nodoc
class _$UpdateVideoDtoCopyWithImpl<$Res, $Val extends UpdateVideoDto>
    implements $UpdateVideoDtoCopyWith<$Res> {
  _$UpdateVideoDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UpdateVideoDtoCopyWith<$Res>
    implements $UpdateVideoDtoCopyWith<$Res> {
  factory _$$_UpdateVideoDtoCopyWith(
          _$_UpdateVideoDto value, $Res Function(_$_UpdateVideoDto) then) =
      __$$_UpdateVideoDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String title, String description});
}

/// @nodoc
class __$$_UpdateVideoDtoCopyWithImpl<$Res>
    extends _$UpdateVideoDtoCopyWithImpl<$Res, _$_UpdateVideoDto>
    implements _$$_UpdateVideoDtoCopyWith<$Res> {
  __$$_UpdateVideoDtoCopyWithImpl(
      _$_UpdateVideoDto _value, $Res Function(_$_UpdateVideoDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = null,
  }) {
    return _then(_$_UpdateVideoDto(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UpdateVideoDto extends _UpdateVideoDto {
  const _$_UpdateVideoDto({required this.title, required this.description})
      : super._();

  factory _$_UpdateVideoDto.fromJson(Map<String, dynamic> json) =>
      _$$_UpdateVideoDtoFromJson(json);

  @override
  final String title;
  @override
  final String description;

  @override
  String toString() {
    return 'UpdateVideoDto(title: $title, description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdateVideoDto &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, title, description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UpdateVideoDtoCopyWith<_$_UpdateVideoDto> get copyWith =>
      __$$_UpdateVideoDtoCopyWithImpl<_$_UpdateVideoDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UpdateVideoDtoToJson(
      this,
    );
  }
}

abstract class _UpdateVideoDto extends UpdateVideoDto {
  const factory _UpdateVideoDto(
      {required final String title,
      required final String description}) = _$_UpdateVideoDto;
  const _UpdateVideoDto._() : super._();

  factory _UpdateVideoDto.fromJson(Map<String, dynamic> json) =
      _$_UpdateVideoDto.fromJson;

  @override
  String get title;
  @override
  String get description;
  @override
  @JsonKey(ignore: true)
  _$$_UpdateVideoDtoCopyWith<_$_UpdateVideoDto> get copyWith =>
      throw _privateConstructorUsedError;
}
