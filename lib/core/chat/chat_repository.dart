import 'package:ask_it/core/chat/chat_dto.dart';
import 'package:ask_it/core/chat/chat_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../api_call_mixin.dart';
import '../client.dart';

part 'chat_repository.g.dart';

class ChatRepository with ApiCallMixin {
  ChatRepository(this._client);

  final RestClient _client;

  Future<void> createConversation(CreateConversationDto dto) =>
      apiCallArgs<void, CreateConversationDto>(
        _client.createConversation,
        dto,
      );

  Future<List<Conversation>> getMyConversations() => apiCall(_client.getMyConversations);

  Future<ConversationMessages> getConversationMessages(num id) =>
      apiCallArgs<ConversationMessages, num>(_client.getConversation, id);

  Future<void> sendMessage(SendMessageDto dto) => apiCallArgs<void, SendMessageDto>(
        _client.sendMessage,
        dto,
      );
}

@riverpod
ChatRepository chatRepository(ChatRepositoryRef ref) {
  final client = ref.watch(RestClient.provider);
  return ChatRepository(client);
}
