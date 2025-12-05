import 'package:bookflip_mobile/features/chat/data/chat.service.dart';
import 'package:bookflip_mobile/features/chat/domain/message.model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'chat.controller.g.dart';

@Riverpod(keepAlive: true)
class ChatController extends _$ChatController {
  @override
  FutureOr<void> build() {}

  Future<void> sendChatMessage({
    required String chatId,
    required String text,
    required String senderId,
  }) async {
    state = const AsyncLoading();

    final service = ref.read(chatServiceProvider);

    final message = Message(
      text: text,
      senderId: senderId,
      timestamp: DateTime.now(),
    );

    try {
      await service.sendMessage(chatId, message);

      state = const AsyncData(null);
    } catch (e, stack) {
      state = AsyncError(e, stack);
    }
  }

  Future<void> addTestMessage(String chatId, String senderId,String text) async {
    if (!ref.mounted) return;
    final service = ref.read(chatServiceProvider);
    final message = Message(
        text: text,
        senderId: senderId, // Use your printed userId: SF4sT6BvhFZsaItBVjGXh03wXX9Q
        timestamp: DateTime.now(),
      );
    await service.addTestMessage(chatId, message);
    if (!ref.mounted) return;
  }
}
