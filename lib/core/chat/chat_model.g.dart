// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Conversation _$$_ConversationFromJson(Map<String, dynamic> json) =>
    _$_Conversation(
      id: json['id'] as num,
      tutorId: json['tutor'] as num,
      tuteeId: json['tutee'] as num,
      appointmentId: json['appointment'] as num,
      chatWith: json['chat_with'] as String,
      chatWithId: json['chat_with_id'] as num,
      lastMessage: json['last_message'] == null
          ? null
          : Message.fromJson(json['last_message'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ConversationToJson(_$_Conversation instance) =>
    <String, dynamic>{
      'id': instance.id,
      'tutor': instance.tutorId,
      'tutee': instance.tuteeId,
      'appointment': instance.appointmentId,
      'chat_with': instance.chatWith,
      'chat_with_id': instance.chatWithId,
      'last_message': instance.lastMessage,
    };

_$_Message _$$_MessageFromJson(Map<String, dynamic> json) => _$_Message(
      id: json['id'] as num,
      conversationId: json['conversation'] as num,
      senderId: json['user'] as num,
      message: json['message'] as String,
      createdAt: DateTime.parse(json['created_at'] as String),
    );

Map<String, dynamic> _$$_MessageToJson(_$_Message instance) =>
    <String, dynamic>{
      'id': instance.id,
      'conversation': instance.conversationId,
      'user': instance.senderId,
      'message': instance.message,
      'created_at': instance.createdAt.toIso8601String(),
    };

_$_ConversationMessages _$$_ConversationMessagesFromJson(
        Map<String, dynamic> json) =>
    _$_ConversationMessages(
      conversation: Conversation.fromJson(
          json['conversation_data'] as Map<String, dynamic>),
      messages: (json['messages'] as List<dynamic>)
          .map((e) => Message.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ConversationMessagesToJson(
        _$_ConversationMessages instance) =>
    <String, dynamic>{
      'conversation_data': instance.conversation,
      'messages': instance.messages,
    };
