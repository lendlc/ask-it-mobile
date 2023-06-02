import 'dart:async';

import 'package:ask_it/core/chat/chat_dto.dart';
import 'package:ask_it/core/chat/chat_model.dart';
import 'package:ask_it/core/chat/chat_repository.dart';
import 'package:fpdart/fpdart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../basic_error.dart';
import '../callable_action.dart';
import '../types.dart';

part 'chat_controller.g.dart';

@riverpod
Future<List<Conversation>> myConversations(MyConversationsRef ref) async {
  final chatRepository = ref.watch(chatRepositoryProvider);
  final conversations = await chatRepository.getMyConversations();
  return conversations;
}

@riverpod
Stream<ConversationMessages> conversationMessages(ConversationMessagesRef ref, num id) async* {
  final chatRepository = ref.watch(chatRepositoryProvider);

  Future<ConversationMessages> getConversationMessages(num id) async {
    final messages = await chatRepository.getConversationMessages(id);
    ref.invalidate(myConversationsProvider);
    return messages;
  }

  // Instantly load messages upon listening to provider
  yield await getConversationMessages(id);

  // Initiate polling
  yield* Stream.periodic(const Duration(seconds: 2), (_) => id).asyncMap(getConversationMessages);
}

@riverpod
CallableAction<EitherResponse<Conversation>, CreateConversationDto> createConversation(
    CreateConversationRef ref) {
  final chatRepository = ref.watch(chatRepositoryProvider);

  return CallableAction((dto) async {
    try {
      final conversation = await chatRepository.createConversation(dto);
      return right(conversation);
    } catch (e) {
      if (e is BasicError) {
        return left(e);
      }
      return left(BasicError(e.toString()));
    } finally {
      ref.invalidate(myConversationsProvider);
    }
  });
}

@riverpod
CallableAction<EitherResponse<bool>, SendMessageDto> sendMessage(SendMessageRef ref) {
  final chatRepository = ref.watch(chatRepositoryProvider);

  return CallableAction((dto) async {
    try {
      await chatRepository.sendMessage(dto);
      return right(true);
    } catch (e) {
      if (e is BasicError) {
        return left(e);
      }
      return left(BasicError(e.toString()));
    } finally {
      ref.invalidate(myConversationsProvider);
    }
  });
}
