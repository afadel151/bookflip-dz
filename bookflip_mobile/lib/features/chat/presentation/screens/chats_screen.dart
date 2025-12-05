import 'package:bookflip_mobile/routes/routes.dart';
import 'package:flutter/material.dart' as material;
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:shadcn_flutter/shadcn_flutter.dart';
import 'package:bookflip_mobile/features/chat/data/chat.service.dart';
import 'package:bookflip_mobile/features/chat/domain/chat.model.dart';

class ChatsScreen extends ConsumerStatefulWidget {
  const ChatsScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _ChatsScreenState();
}

class _ChatsScreenState extends ConsumerState<ChatsScreen> {
  @override
  Widget build(BuildContext context) {
    final chatsAsync = ref.watch(myChatsProvider);
    final currentUser = ref.watch(firebaseProvider).currentUser;

    if (currentUser == null) {
      return const Center(child: Text("Please log in to view chats"));
    }
    return chatsAsync.when(
      data: (chats) {
        if (chats.isEmpty) {
          return const Center(child: Text("No chats yet. Start trading!"));
        }

        return ListView.separated(
          padding: const EdgeInsets.all(6),
          itemCount: chats.length,
          separatorBuilder: (c, i) => const SizedBox(height: 12),
          itemBuilder: (context, index) {
            final chat = chats[index];
            return _ChatListItem(chat: chat, currentUserId: currentUser.uid);
          },
        );
      },
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (err, stack) => Center(child: Text('Error: $err')),
    );
  }
}

class _ChatListItem extends StatelessWidget {
  final Chat chat;
  final String currentUserId;

  const _ChatListItem({required this.chat, required this.currentUserId});

  @override
  Widget build(BuildContext context) {
    final otherUserId = chat.participants.firstWhere(
      (id) => id != currentUserId,
      orElse: () => 'Unknown',
    );

    final unreadCount = chat.unreadCount[currentUserId] ?? 0;

    final timeString = chat.lastMessage.timestamp.toString();

    return Card(
      child: material.InkWell(
        borderRadius: BorderRadius.circular(8),
        onTap: () {
          print("chatId ${chat.id}");
          context.pushNamed(
            'chat_details',
            pathParameters: {'chatId': ?chat.id},
          );
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Avatar(
              backgroundColor: Colors.gray.shade200,
              initials: otherUserId.substring(0, 2).toUpperCase(),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "User: ${otherUserId.substring(0, 7)}...",
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        timeString,
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.gray.shade50,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 4),
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          chat.lastMessage.text,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            color: unreadCount > 0
                                ? Colors.black
                                : Colors.gray.shade600,
                            fontWeight: unreadCount > 0
                                ? FontWeight.w600
                                : FontWeight.normal,
                          ),
                        ),
                      ),
                      if (unreadCount > 0)
                        Container(
                          margin: const EdgeInsets.only(left: 8),
                          padding: const EdgeInsets.symmetric(
                            horizontal: 8,
                            vertical: 2,
                          ),
                          decoration: BoxDecoration(
                            color: Colors.blue, // Primary color
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Text(
                            unreadCount.toString(),
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
