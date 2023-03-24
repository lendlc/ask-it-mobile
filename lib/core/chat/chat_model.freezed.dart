// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Conversation _$ConversationFromJson(Map<String, dynamic> json) {
  return _Conversation.fromJson(json);
}

/// @nodoc
mixin _$Conversation {
  num get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'tutor')
  num get tutorId => throw _privateConstructorUsedError;
  @JsonKey(name: 'tutee')
  num get tuteeId => throw _privateConstructorUsedError;
  @JsonKey(name: 'appointment')
  num get appointmentId => throw _privateConstructorUsedError;
  @JsonKey(name: 'chat_with')
  String get chatWith => throw _privateConstructorUsedError;
  @JsonKey(name: 'chat_with_id')
  num get chatWithId => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_message', nullable: true)
  Message? get lastMessage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ConversationCopyWith<Conversation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConversationCopyWith<$Res> {
  factory $ConversationCopyWith(
          Conversation value, $Res Function(Conversation) then) =
      _$ConversationCopyWithImpl<$Res, Conversation>;
  @useResult
  $Res call(
      {num id,
      @JsonKey(name: 'tutor') num tutorId,
      @JsonKey(name: 'tutee') num tuteeId,
      @JsonKey(name: 'appointment') num appointmentId,
      @JsonKey(name: 'chat_with') String chatWith,
      @JsonKey(name: 'chat_with_id') num chatWithId,
      @JsonKey(name: 'last_message', nullable: true) Message? lastMessage});

  $MessageCopyWith<$Res>? get lastMessage;
}

/// @nodoc
class _$ConversationCopyWithImpl<$Res, $Val extends Conversation>
    implements $ConversationCopyWith<$Res> {
  _$ConversationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? tutorId = null,
    Object? tuteeId = null,
    Object? appointmentId = null,
    Object? chatWith = null,
    Object? chatWithId = null,
    Object? lastMessage = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as num,
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
      chatWith: null == chatWith
          ? _value.chatWith
          : chatWith // ignore: cast_nullable_to_non_nullable
              as String,
      chatWithId: null == chatWithId
          ? _value.chatWithId
          : chatWithId // ignore: cast_nullable_to_non_nullable
              as num,
      lastMessage: freezed == lastMessage
          ? _value.lastMessage
          : lastMessage // ignore: cast_nullable_to_non_nullable
              as Message?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MessageCopyWith<$Res>? get lastMessage {
    if (_value.lastMessage == null) {
      return null;
    }

    return $MessageCopyWith<$Res>(_value.lastMessage!, (value) {
      return _then(_value.copyWith(lastMessage: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ConversationCopyWith<$Res>
    implements $ConversationCopyWith<$Res> {
  factory _$$_ConversationCopyWith(
          _$_Conversation value, $Res Function(_$_Conversation) then) =
      __$$_ConversationCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {num id,
      @JsonKey(name: 'tutor') num tutorId,
      @JsonKey(name: 'tutee') num tuteeId,
      @JsonKey(name: 'appointment') num appointmentId,
      @JsonKey(name: 'chat_with') String chatWith,
      @JsonKey(name: 'chat_with_id') num chatWithId,
      @JsonKey(name: 'last_message', nullable: true) Message? lastMessage});

  @override
  $MessageCopyWith<$Res>? get lastMessage;
}

/// @nodoc
class __$$_ConversationCopyWithImpl<$Res>
    extends _$ConversationCopyWithImpl<$Res, _$_Conversation>
    implements _$$_ConversationCopyWith<$Res> {
  __$$_ConversationCopyWithImpl(
      _$_Conversation _value, $Res Function(_$_Conversation) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? tutorId = null,
    Object? tuteeId = null,
    Object? appointmentId = null,
    Object? chatWith = null,
    Object? chatWithId = null,
    Object? lastMessage = freezed,
  }) {
    return _then(_$_Conversation(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as num,
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
      chatWith: null == chatWith
          ? _value.chatWith
          : chatWith // ignore: cast_nullable_to_non_nullable
              as String,
      chatWithId: null == chatWithId
          ? _value.chatWithId
          : chatWithId // ignore: cast_nullable_to_non_nullable
              as num,
      lastMessage: freezed == lastMessage
          ? _value.lastMessage
          : lastMessage // ignore: cast_nullable_to_non_nullable
              as Message?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Conversation extends _Conversation {
  const _$_Conversation(
      {required this.id,
      @JsonKey(name: 'tutor') required this.tutorId,
      @JsonKey(name: 'tutee') required this.tuteeId,
      @JsonKey(name: 'appointment') required this.appointmentId,
      @JsonKey(name: 'chat_with') required this.chatWith,
      @JsonKey(name: 'chat_with_id') required this.chatWithId,
      @JsonKey(name: 'last_message', nullable: true) required this.lastMessage})
      : super._();

  factory _$_Conversation.fromJson(Map<String, dynamic> json) =>
      _$$_ConversationFromJson(json);

  @override
  final num id;
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
  @JsonKey(name: 'chat_with')
  final String chatWith;
  @override
  @JsonKey(name: 'chat_with_id')
  final num chatWithId;
  @override
  @JsonKey(name: 'last_message', nullable: true)
  final Message? lastMessage;

  @override
  String toString() {
    return 'Conversation(id: $id, tutorId: $tutorId, tuteeId: $tuteeId, appointmentId: $appointmentId, chatWith: $chatWith, chatWithId: $chatWithId, lastMessage: $lastMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Conversation &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.tutorId, tutorId) || other.tutorId == tutorId) &&
            (identical(other.tuteeId, tuteeId) || other.tuteeId == tuteeId) &&
            (identical(other.appointmentId, appointmentId) ||
                other.appointmentId == appointmentId) &&
            (identical(other.chatWith, chatWith) ||
                other.chatWith == chatWith) &&
            (identical(other.chatWithId, chatWithId) ||
                other.chatWithId == chatWithId) &&
            (identical(other.lastMessage, lastMessage) ||
                other.lastMessage == lastMessage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, tutorId, tuteeId,
      appointmentId, chatWith, chatWithId, lastMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ConversationCopyWith<_$_Conversation> get copyWith =>
      __$$_ConversationCopyWithImpl<_$_Conversation>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ConversationToJson(
      this,
    );
  }
}

abstract class _Conversation extends Conversation {
  const factory _Conversation(
      {required final num id,
      @JsonKey(name: 'tutor')
          required final num tutorId,
      @JsonKey(name: 'tutee')
          required final num tuteeId,
      @JsonKey(name: 'appointment')
          required final num appointmentId,
      @JsonKey(name: 'chat_with')
          required final String chatWith,
      @JsonKey(name: 'chat_with_id')
          required final num chatWithId,
      @JsonKey(name: 'last_message', nullable: true)
          required final Message? lastMessage}) = _$_Conversation;
  const _Conversation._() : super._();

  factory _Conversation.fromJson(Map<String, dynamic> json) =
      _$_Conversation.fromJson;

  @override
  num get id;
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
  @JsonKey(name: 'chat_with')
  String get chatWith;
  @override
  @JsonKey(name: 'chat_with_id')
  num get chatWithId;
  @override
  @JsonKey(name: 'last_message', nullable: true)
  Message? get lastMessage;
  @override
  @JsonKey(ignore: true)
  _$$_ConversationCopyWith<_$_Conversation> get copyWith =>
      throw _privateConstructorUsedError;
}

Message _$MessageFromJson(Map<String, dynamic> json) {
  return _Message.fromJson(json);
}

/// @nodoc
mixin _$Message {
  num get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'conversation')
  num get conversationId => throw _privateConstructorUsedError;
  @JsonKey(name: 'user')
  num get senderId => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime get createdAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MessageCopyWith<Message> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessageCopyWith<$Res> {
  factory $MessageCopyWith(Message value, $Res Function(Message) then) =
      _$MessageCopyWithImpl<$Res, Message>;
  @useResult
  $Res call(
      {num id,
      @JsonKey(name: 'conversation') num conversationId,
      @JsonKey(name: 'user') num senderId,
      String message,
      @JsonKey(name: 'created_at') DateTime createdAt});
}

/// @nodoc
class _$MessageCopyWithImpl<$Res, $Val extends Message>
    implements $MessageCopyWith<$Res> {
  _$MessageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? conversationId = null,
    Object? senderId = null,
    Object? message = null,
    Object? createdAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as num,
      conversationId: null == conversationId
          ? _value.conversationId
          : conversationId // ignore: cast_nullable_to_non_nullable
              as num,
      senderId: null == senderId
          ? _value.senderId
          : senderId // ignore: cast_nullable_to_non_nullable
              as num,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MessageCopyWith<$Res> implements $MessageCopyWith<$Res> {
  factory _$$_MessageCopyWith(
          _$_Message value, $Res Function(_$_Message) then) =
      __$$_MessageCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {num id,
      @JsonKey(name: 'conversation') num conversationId,
      @JsonKey(name: 'user') num senderId,
      String message,
      @JsonKey(name: 'created_at') DateTime createdAt});
}

/// @nodoc
class __$$_MessageCopyWithImpl<$Res>
    extends _$MessageCopyWithImpl<$Res, _$_Message>
    implements _$$_MessageCopyWith<$Res> {
  __$$_MessageCopyWithImpl(_$_Message _value, $Res Function(_$_Message) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? conversationId = null,
    Object? senderId = null,
    Object? message = null,
    Object? createdAt = null,
  }) {
    return _then(_$_Message(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as num,
      conversationId: null == conversationId
          ? _value.conversationId
          : conversationId // ignore: cast_nullable_to_non_nullable
              as num,
      senderId: null == senderId
          ? _value.senderId
          : senderId // ignore: cast_nullable_to_non_nullable
              as num,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Message extends _Message {
  const _$_Message(
      {required this.id,
      @JsonKey(name: 'conversation') required this.conversationId,
      @JsonKey(name: 'user') required this.senderId,
      required this.message,
      @JsonKey(name: 'created_at') required this.createdAt})
      : super._();

  factory _$_Message.fromJson(Map<String, dynamic> json) =>
      _$$_MessageFromJson(json);

  @override
  final num id;
  @override
  @JsonKey(name: 'conversation')
  final num conversationId;
  @override
  @JsonKey(name: 'user')
  final num senderId;
  @override
  final String message;
  @override
  @JsonKey(name: 'created_at')
  final DateTime createdAt;

  @override
  String toString() {
    return 'Message(id: $id, conversationId: $conversationId, senderId: $senderId, message: $message, createdAt: $createdAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Message &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.conversationId, conversationId) ||
                other.conversationId == conversationId) &&
            (identical(other.senderId, senderId) ||
                other.senderId == senderId) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, conversationId, senderId, message, createdAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MessageCopyWith<_$_Message> get copyWith =>
      __$$_MessageCopyWithImpl<_$_Message>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MessageToJson(
      this,
    );
  }
}

abstract class _Message extends Message {
  const factory _Message(
          {required final num id,
          @JsonKey(name: 'conversation') required final num conversationId,
          @JsonKey(name: 'user') required final num senderId,
          required final String message,
          @JsonKey(name: 'created_at') required final DateTime createdAt}) =
      _$_Message;
  const _Message._() : super._();

  factory _Message.fromJson(Map<String, dynamic> json) = _$_Message.fromJson;

  @override
  num get id;
  @override
  @JsonKey(name: 'conversation')
  num get conversationId;
  @override
  @JsonKey(name: 'user')
  num get senderId;
  @override
  String get message;
  @override
  @JsonKey(name: 'created_at')
  DateTime get createdAt;
  @override
  @JsonKey(ignore: true)
  _$$_MessageCopyWith<_$_Message> get copyWith =>
      throw _privateConstructorUsedError;
}

ConversationMessages _$ConversationMessagesFromJson(Map<String, dynamic> json) {
  return _ConversationMessages.fromJson(json);
}

/// @nodoc
mixin _$ConversationMessages {
  @JsonKey(name: 'conversation_data')
  Conversation get conversation => throw _privateConstructorUsedError;
  List<Message> get messages => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ConversationMessagesCopyWith<ConversationMessages> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConversationMessagesCopyWith<$Res> {
  factory $ConversationMessagesCopyWith(ConversationMessages value,
          $Res Function(ConversationMessages) then) =
      _$ConversationMessagesCopyWithImpl<$Res, ConversationMessages>;
  @useResult
  $Res call(
      {@JsonKey(name: 'conversation_data') Conversation conversation,
      List<Message> messages});

  $ConversationCopyWith<$Res> get conversation;
}

/// @nodoc
class _$ConversationMessagesCopyWithImpl<$Res,
        $Val extends ConversationMessages>
    implements $ConversationMessagesCopyWith<$Res> {
  _$ConversationMessagesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? conversation = null,
    Object? messages = null,
  }) {
    return _then(_value.copyWith(
      conversation: null == conversation
          ? _value.conversation
          : conversation // ignore: cast_nullable_to_non_nullable
              as Conversation,
      messages: null == messages
          ? _value.messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<Message>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ConversationCopyWith<$Res> get conversation {
    return $ConversationCopyWith<$Res>(_value.conversation, (value) {
      return _then(_value.copyWith(conversation: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ConversationMessagesCopyWith<$Res>
    implements $ConversationMessagesCopyWith<$Res> {
  factory _$$_ConversationMessagesCopyWith(_$_ConversationMessages value,
          $Res Function(_$_ConversationMessages) then) =
      __$$_ConversationMessagesCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'conversation_data') Conversation conversation,
      List<Message> messages});

  @override
  $ConversationCopyWith<$Res> get conversation;
}

/// @nodoc
class __$$_ConversationMessagesCopyWithImpl<$Res>
    extends _$ConversationMessagesCopyWithImpl<$Res, _$_ConversationMessages>
    implements _$$_ConversationMessagesCopyWith<$Res> {
  __$$_ConversationMessagesCopyWithImpl(_$_ConversationMessages _value,
      $Res Function(_$_ConversationMessages) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? conversation = null,
    Object? messages = null,
  }) {
    return _then(_$_ConversationMessages(
      conversation: null == conversation
          ? _value.conversation
          : conversation // ignore: cast_nullable_to_non_nullable
              as Conversation,
      messages: null == messages
          ? _value._messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<Message>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ConversationMessages extends _ConversationMessages {
  const _$_ConversationMessages(
      {@JsonKey(name: 'conversation_data') required this.conversation,
      required final List<Message> messages})
      : _messages = messages,
        super._();

  factory _$_ConversationMessages.fromJson(Map<String, dynamic> json) =>
      _$$_ConversationMessagesFromJson(json);

  @override
  @JsonKey(name: 'conversation_data')
  final Conversation conversation;
  final List<Message> _messages;
  @override
  List<Message> get messages {
    if (_messages is EqualUnmodifiableListView) return _messages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_messages);
  }

  @override
  String toString() {
    return 'ConversationMessages(conversation: $conversation, messages: $messages)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ConversationMessages &&
            (identical(other.conversation, conversation) ||
                other.conversation == conversation) &&
            const DeepCollectionEquality().equals(other._messages, _messages));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, conversation,
      const DeepCollectionEquality().hash(_messages));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ConversationMessagesCopyWith<_$_ConversationMessages> get copyWith =>
      __$$_ConversationMessagesCopyWithImpl<_$_ConversationMessages>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ConversationMessagesToJson(
      this,
    );
  }
}

abstract class _ConversationMessages extends ConversationMessages {
  const factory _ConversationMessages(
      {@JsonKey(name: 'conversation_data')
          required final Conversation conversation,
      required final List<Message> messages}) = _$_ConversationMessages;
  const _ConversationMessages._() : super._();

  factory _ConversationMessages.fromJson(Map<String, dynamic> json) =
      _$_ConversationMessages.fromJson;

  @override
  @JsonKey(name: 'conversation_data')
  Conversation get conversation;
  @override
  List<Message> get messages;
  @override
  @JsonKey(ignore: true)
  _$$_ConversationMessagesCopyWith<_$_ConversationMessages> get copyWith =>
      throw _privateConstructorUsedError;
}
