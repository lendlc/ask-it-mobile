// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CreateConversationDto _$CreateConversationDtoFromJson(
    Map<String, dynamic> json) {
  return _CreateConversationDto.fromJson(json);
}

/// @nodoc
mixin _$CreateConversationDto {
  @JsonKey(name: 'tutor')
  num get tutorId => throw _privateConstructorUsedError;
  @JsonKey(name: 'tutee')
  num get tuteeId => throw _privateConstructorUsedError;
  @JsonKey(name: 'appointment')
  num get appointmentId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateConversationDtoCopyWith<CreateConversationDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateConversationDtoCopyWith<$Res> {
  factory $CreateConversationDtoCopyWith(CreateConversationDto value,
          $Res Function(CreateConversationDto) then) =
      _$CreateConversationDtoCopyWithImpl<$Res, CreateConversationDto>;
  @useResult
  $Res call(
      {@JsonKey(name: 'tutor') num tutorId,
      @JsonKey(name: 'tutee') num tuteeId,
      @JsonKey(name: 'appointment') num appointmentId});
}

/// @nodoc
class _$CreateConversationDtoCopyWithImpl<$Res,
        $Val extends CreateConversationDto>
    implements $CreateConversationDtoCopyWith<$Res> {
  _$CreateConversationDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tutorId = null,
    Object? tuteeId = null,
    Object? appointmentId = null,
  }) {
    return _then(_value.copyWith(
      tutorId: null == tutorId
          ? _value.tutorId
          : tutorId // ignore: cast_nullable_to_non_nullable
              as num,
      tuteeId: null == tuteeId
          ? _value.tuteeId
          : tuteeId // ignore: cast_nullable_to_non_nullable
              as num,
      appointmentId: null == appointmentId
          ? _value.appointmentId
          : appointmentId // ignore: cast_nullable_to_non_nullable
              as num,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CreateConversationDtoCopyWith<$Res>
    implements $CreateConversationDtoCopyWith<$Res> {
  factory _$$_CreateConversationDtoCopyWith(_$_CreateConversationDto value,
          $Res Function(_$_CreateConversationDto) then) =
      __$$_CreateConversationDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'tutor') num tutorId,
      @JsonKey(name: 'tutee') num tuteeId,
      @JsonKey(name: 'appointment') num appointmentId});
}

/// @nodoc
class __$$_CreateConversationDtoCopyWithImpl<$Res>
    extends _$CreateConversationDtoCopyWithImpl<$Res, _$_CreateConversationDto>
    implements _$$_CreateConversationDtoCopyWith<$Res> {
  __$$_CreateConversationDtoCopyWithImpl(_$_CreateConversationDto _value,
      $Res Function(_$_CreateConversationDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tutorId = null,
    Object? tuteeId = null,
    Object? appointmentId = null,
  }) {
    return _then(_$_CreateConversationDto(
      tutorId: null == tutorId
          ? _value.tutorId
          : tutorId // ignore: cast_nullable_to_non_nullable
              as num,
      tuteeId: null == tuteeId
          ? _value.tuteeId
          : tuteeId // ignore: cast_nullable_to_non_nullable
              as num,
      appointmentId: null == appointmentId
          ? _value.appointmentId
          : appointmentId // ignore: cast_nullable_to_non_nullable
              as num,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CreateConversationDto extends _CreateConversationDto {
  const _$_CreateConversationDto(
      {@JsonKey(name: 'tutor') required this.tutorId,
      @JsonKey(name: 'tutee') required this.tuteeId,
      @JsonKey(name: 'appointment') required this.appointmentId})
      : super._();

  factory _$_CreateConversationDto.fromJson(Map<String, dynamic> json) =>
      _$$_CreateConversationDtoFromJson(json);

  @override
  @JsonKey(name: 'tutor')
  final num tutorId;
  @override
  @JsonKey(name: 'tutee')
  final num tuteeId;
  @override
  @JsonKey(name: 'appointment')
  final num appointmentId;

  @override
  String toString() {
    return 'CreateConversationDto(tutorId: $tutorId, tuteeId: $tuteeId, appointmentId: $appointmentId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CreateConversationDto &&
            (identical(other.tutorId, tutorId) || other.tutorId == tutorId) &&
            (identical(other.tuteeId, tuteeId) || other.tuteeId == tuteeId) &&
            (identical(other.appointmentId, appointmentId) ||
                other.appointmentId == appointmentId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, tutorId, tuteeId, appointmentId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CreateConversationDtoCopyWith<_$_CreateConversationDto> get copyWith =>
      __$$_CreateConversationDtoCopyWithImpl<_$_CreateConversationDto>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CreateConversationDtoToJson(
      this,
    );
  }
}

abstract class _CreateConversationDto extends CreateConversationDto {
  const factory _CreateConversationDto(
          {@JsonKey(name: 'tutor') required final num tutorId,
          @JsonKey(name: 'tutee') required final num tuteeId,
          @JsonKey(name: 'appointment') required final num appointmentId}) =
      _$_CreateConversationDto;
  const _CreateConversationDto._() : super._();

  factory _CreateConversationDto.fromJson(Map<String, dynamic> json) =
      _$_CreateConversationDto.fromJson;

  @override
  @JsonKey(name: 'tutor')
  num get tutorId;
  @override
  @JsonKey(name: 'tutee')
  num get tuteeId;
  @override
  @JsonKey(name: 'appointment')
  num get appointmentId;
  @override
  @JsonKey(ignore: true)
  _$$_CreateConversationDtoCopyWith<_$_CreateConversationDto> get copyWith =>
      throw _privateConstructorUsedError;
}

SendMessageDto _$SendMessageDtoFromJson(Map<String, dynamic> json) {
  return _SendMessageDto.fromJson(json);
}

/// @nodoc
mixin _$SendMessageDto {
  @JsonKey(name: 'conversation')
  num get conversationId => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SendMessageDtoCopyWith<SendMessageDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SendMessageDtoCopyWith<$Res> {
  factory $SendMessageDtoCopyWith(
          SendMessageDto value, $Res Function(SendMessageDto) then) =
      _$SendMessageDtoCopyWithImpl<$Res, SendMessageDto>;
  @useResult
  $Res call(
      {@JsonKey(name: 'conversation') num conversationId, String message});
}

/// @nodoc
class _$SendMessageDtoCopyWithImpl<$Res, $Val extends SendMessageDto>
    implements $SendMessageDtoCopyWith<$Res> {
  _$SendMessageDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? conversationId = null,
    Object? message = null,
  }) {
    return _then(_value.copyWith(
      conversationId: null == conversationId
          ? _value.conversationId
          : conversationId // ignore: cast_nullable_to_non_nullable
              as num,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SendMessageDtoCopyWith<$Res>
    implements $SendMessageDtoCopyWith<$Res> {
  factory _$$_SendMessageDtoCopyWith(
          _$_SendMessageDto value, $Res Function(_$_SendMessageDto) then) =
      __$$_SendMessageDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'conversation') num conversationId, String message});
}

/// @nodoc
class __$$_SendMessageDtoCopyWithImpl<$Res>
    extends _$SendMessageDtoCopyWithImpl<$Res, _$_SendMessageDto>
    implements _$$_SendMessageDtoCopyWith<$Res> {
  __$$_SendMessageDtoCopyWithImpl(
      _$_SendMessageDto _value, $Res Function(_$_SendMessageDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? conversationId = null,
    Object? message = null,
  }) {
    return _then(_$_SendMessageDto(
      conversationId: null == conversationId
          ? _value.conversationId
          : conversationId // ignore: cast_nullable_to_non_nullable
              as num,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SendMessageDto extends _SendMessageDto {
  const _$_SendMessageDto(
      {@JsonKey(name: 'conversation') required this.conversationId,
      required this.message})
      : super._();

  factory _$_SendMessageDto.fromJson(Map<String, dynamic> json) =>
      _$$_SendMessageDtoFromJson(json);

  @override
  @JsonKey(name: 'conversation')
  final num conversationId;
  @override
  final String message;

  @override
  String toString() {
    return 'SendMessageDto(conversationId: $conversationId, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SendMessageDto &&
            (identical(other.conversationId, conversationId) ||
                other.conversationId == conversationId) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, conversationId, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SendMessageDtoCopyWith<_$_SendMessageDto> get copyWith =>
      __$$_SendMessageDtoCopyWithImpl<_$_SendMessageDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SendMessageDtoToJson(
      this,
    );
  }
}

abstract class _SendMessageDto extends SendMessageDto {
  const factory _SendMessageDto(
      {@JsonKey(name: 'conversation') required final num conversationId,
      required final String message}) = _$_SendMessageDto;
  const _SendMessageDto._() : super._();

  factory _SendMessageDto.fromJson(Map<String, dynamic> json) =
      _$_SendMessageDto.fromJson;

  @override
  @JsonKey(name: 'conversation')
  num get conversationId;
  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$_SendMessageDtoCopyWith<_$_SendMessageDto> get copyWith =>
      throw _privateConstructorUsedError;
}
