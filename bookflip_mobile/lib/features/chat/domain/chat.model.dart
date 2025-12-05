
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:bookflip_mobile/utils/timestamp_converter.dart';

part 'chat.model.freezed.dart';
part 'chat.model.g.dart';

@freezed
abstract class LastMessage with _$LastMessage {
  const factory LastMessage({
    required String text, 
    required String senderId,
    @TimestampConverter()
    required DateTime timestamp,
  }) = _LastMessage;

  factory LastMessage.fromJson(Map<String, dynamic> json) => _$LastMessageFromJson(json);
}


@freezed
abstract class Chat with _$Chat {
  @JsonSerializable(explicitToJson: true)
  const factory Chat({
    String? id,
    required List<String> participants, 
    
    required String bookId, 
    
    required LastMessage lastMessage,
    
    @TimestampConverter()
    required DateTime createdAt,
    
    required Map<String, int> unreadCount,
  }) = _Chat;

  factory Chat.fromJson(Map<String, dynamic> json) => _$ChatFromJson(json);
}