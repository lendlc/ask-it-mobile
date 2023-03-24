// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CreateConversationDto _$$_CreateConversationDtoFromJson(
        Map<String, dynamic> json) =>
    _$_CreateConversationDto(
      tutorId: json['tutor'] as num,
      tuteeId: json['tutee'] as num,
      appointmentId: json['appointment'] as num,
    );

Map<String, dynamic> _$$_CreateConversationDtoToJson(
        _$_CreateConversationDto instance) =>
    <String, dynamic>{
      'tutor': instance.tutorId,
      'tutee': instance.tuteeId,
      'appointment': instance.appointmentId,
    };

_$_SendMessageDto _$$_SendMessageDtoFromJson(Map<String, dynamic> json) =>
    _$_SendMessageDto(
      conversationId: json['conversation'] as num,
      message: json['message'] as String,
    );

Map<String, dynamic> _$$_SendMessageDtoToJson(_$_SendMessageDto instance) =>
    <String, dynamic>{
      'conversation': instance.conversationId,
      'message': instance.message,
    };
