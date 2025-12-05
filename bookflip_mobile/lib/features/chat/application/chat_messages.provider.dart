// features/chat/application/chat_messages_provider.dart

import 'package:bookflip_mobile/features/chat/data/chat.service.dart';
import 'package:bookflip_mobile/features/chat/domain/message.model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';


part 'chat_messages.provider.g.dart';

// Takes a required parameter (the specific chat ID)
@riverpod
Stream<List<Message>> messagesStream(Ref ref, String chatId) {
  final service = ref.watch(chatServiceProvider);
  print("chatid in messagesStream $chatId");
  // This exposes the Stream directly, giving the UI an AsyncValue<List<Message>>
  return service.getMessages(chatId);
}