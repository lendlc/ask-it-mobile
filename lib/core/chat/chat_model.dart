// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat_model.freezed.dart';
part 'chat_model.g.dart';

@freezed
class Conversation with _$Conversation {
  const factory Conversation({
    required num id,
    @JsonKey(name: 'tutor') required num tutorId,
    @JsonKey(name: 'tutee') required num tuteeId,
    @JsonKey(name: 'appointment') required num appointmentId,
    @JsonKey(name: 'chat_with') required String chatWith,
    @JsonKey(name: 'chat_with_id') required num chatWithId,
    @JsonKey(name: 'last_message', nullable: true) required Message? lastMessage,
  }) = _Conversation;

  const Conversation._();

  factory Conversation.fromJson(Map<String, dynamic> json) => _$ConversationFromJson(json);
}

@freezed
class Message with _$Message {
  const factory Message({
    required num id,
    @JsonKey(name: 'conversation') required num conversationId,
    @JsonKey(name: 'user') required num senderId,
    required String message,
    @JsonKey(name: 'created_at') required DateTime createdAt,
  }) = _Message;

  const Message._();

  factory Message.fromJson(Map<String, dynamic> json) => _$MessageFromJson(json);
}

@freezed
class ConversationMessages with _$ConversationMessages {
  const factory ConversationMessages({
    @JsonKey(name: 'conversation_data') required Conversation conversation,
    required List<Message> messages,
  }) = _ConversationMessages;

  const ConversationMessages._();

  factory ConversationMessages.fromJson(Map<String, dynamic> json) =>
      _$ConversationMessagesFromJson(json);
}
