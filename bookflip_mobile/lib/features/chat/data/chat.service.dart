import 'package:bookflip_mobile/features/chat/domain/chat.model.dart';
import 'package:bookflip_mobile/routes/routes.dart';
import 'package:bookflip_mobile/utils/firestore/firestore.provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'chat.repository.dart';

part 'chat.service.g.dart';


@riverpod
ChatRepository chatService(Ref ref) {
  final firestore = ref.watch(firebaseFirestoreProvider);
  return ChatRepository(firestore);
}

@riverpod
Stream<List<Chat>> myChats(Ref ref) {
  final auth = ref.watch(firebaseProvider);
  final user = auth.currentUser;

  if (user == null) return const Stream.empty();

  final service = ref.watch(chatServiceProvider);
  return service.getChatsForUser(user.uid);
}