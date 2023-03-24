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
  yield* Stream.periodic(const Duration(seconds: 3), (_) => id)
      .asyncMap((id) => chatRepository.getConversationMessages(id));
}

@riverpod
CallableAction<EitherResponse<bool>, CreateConversationDto> createConversation(
    CreateConversationRef ref) {
  final chatRepository = ref.watch(chatRepositoryProvider);

  return CallableAction((dto) async {
    try {
      await chatRepository.createConversation(dto);
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
    }
  });
}
