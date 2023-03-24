// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat_dto.freezed.dart';
part 'chat_dto.g.dart';

@freezed
class CreateConversationDto with _$CreateConversationDto {
  const factory CreateConversationDto({
    @JsonKey(name: 'tutor') required num tutorId,
    @JsonKey(name: 'tutee') required num tuteeId,
    @JsonKey(name: 'appointment') required num appointmentId,
  }) = _CreateConversationDto;

  const CreateConversationDto._();

  factory CreateConversationDto.fromJson(Map<String, dynamic> json) =>
      _$CreateConversationDtoFromJson(json);
}

@freezed
class SendMessageDto with _$SendMessageDto {
  const factory SendMessageDto({
    @JsonKey(name: 'conversation') required num conversationId,
    required String message,
  }) = _SendMessageDto;

  const SendMessageDto._();

  factory SendMessageDto.fromJson(Map<String, dynamic> json) => _$SendMessageDtoFromJson(json);
}
