import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:bookflip_mobile/features/chat/domain/chat.model.dart';
import 'package:bookflip_mobile/features/chat/domain/message.model.dart';

class ChatRepository {
  final FirebaseFirestore _firestore;

  ChatRepository(this._firestore);
  


  Stream<List<Chat>> getChatsForUser(String userId) {
    print(userId);
    return _firestore
        .collection('chats')
        .where('participants', arrayContains: userId)
        // Note: You need a composite index in Firestore for 'participants' + 'lastMessage.timestamp'
        .orderBy('lastMessage.timestamp', descending: true)
        .snapshots()
        .map((snapshot) {
          return snapshot.docs.map((doc) {
            final data = doc.data();

            // 2. Insert the document ID into the map under the 'id' key
            data['id'] = doc.id; //
            return Chat.fromJson(data);
          }).toList();
        });
  }

  Stream<Chat> getChat(String chatId) {
    return _firestore.collection('chats').doc(chatId).snapshots().map((
      snapshot,
    ) {
      return Chat.fromJson(snapshot.data()!);
    });
  }

  Stream<List<Message>> getMessages(String chatId) {
    print("chatId in getMessages $chatId");
    return _firestore
        .collection('chats')
        .doc(chatId)
        .collection('messages')
        .orderBy("timestamp",descending: true)
        .snapshots()
        .map((snapshot) {
          print("snapchot.docs: ${snapshot.docs}");
          return snapshot.docs
              .map((doc) => Message.fromJson(doc.data()))
              .toList();
        });
  }

  Future<void> sendMessage(String chatId, Message message) async {
    await _firestore
        .collection('chats')
        .doc(chatId)
        .collection('messages')
        .add(message.toJson());
  }

  Future<void> addTestMessage(String chatId,Message message) async {
    await _firestore // assuming _firestore is accessible
        .collection('chats')
        .doc(chatId)
        .collection('messages')
        .add(message.toJson()); 
  }
}
