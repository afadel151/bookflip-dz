import 'package:bookflip_mobile/features/chat/application/chat.controller.dart';
import 'package:bookflip_mobile/features/chat/application/chat_messages.provider.dart';
import 'package:bookflip_mobile/routes/routes.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shadcn_flutter/shadcn_flutter.dart';

class ChatScreen extends ConsumerStatefulWidget {
  final String chatId;
  const ChatScreen({super.key, required this.chatId});

  @override
  ConsumerState<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends ConsumerState<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    // 1. Watch the stream of messages

    // final _messageController =
    final chatId = widget.chatId;
    final messageController = TextEditingController();

    final messagesAsync = ref.watch(messagesStreamProvider(chatId));
    final controller = ref.read(chatControllerProvider.notifier);
    final currentUserId = ref.watch(firebaseProvider).currentUser?.uid;
    return Column(
      children: [
        // Message List Area
        Expanded(
          child: messagesAsync.when(
            data: (messages) {
              print("data");
              print(messages.length);
              return ListView.builder(
                reverse: true, // Show newest at bottom
                itemCount: messages.length,
                itemBuilder: (context, index) {
                  final message = messages[index];
                  final isMe = message.senderId == currentUserId;

                  return Align(
                    alignment: isMe
                        ? Alignment.centerRight
                        : Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 4,
                      ),
                      child: Text(message.text),
                    ),
                  );
                },
              );
            },
            loading: () => const Center(child: CircularProgressIndicator()),
            error: (err, stack) => Center(child: Text('Error: $err')),
          ),
        ),

        // Message Input Field (Placeholder)
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Expanded(child: TextField(controller: messageController)),
              const SizedBox(width: 8),
              PrimaryButton(
                onPressed: () {
                  if (currentUserId == null) return;

                  controller.addTestMessage(chatId, currentUserId,messageController.text.trim());
                  messageController.clear();
                },
                child: const Icon(BootstrapIcons.send),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
