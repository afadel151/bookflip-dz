// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_LastMessage _$LastMessageFromJson(Map<String, dynamic> json) => _LastMessage(
  text: json['text'] as String,
  senderId: json['senderId'] as String,
  timestamp: const TimestampConverter().fromJson(
    json['timestamp'] as Timestamp,
  ),
);

Map<String, dynamic> _$LastMessageToJson(_LastMessage instance) =>
    <String, dynamic>{
      'text': instance.text,
      'senderId': instance.senderId,
      'timestamp': const TimestampConverter().toJson(instance.timestamp),
    };

_Chat _$ChatFromJson(Map<String, dynamic> json) => _Chat(
  participants: (json['participants'] as List<dynamic>)
      .map((e) => e as String)
      .toList(),
  bookId: json['bookId'] as String,
  lastMessage: LastMessage.fromJson(
    json['lastMessage'] as Map<String, dynamic>,
  ),
  createdAt: const TimestampConverter().fromJson(
    json['createdAt'] as Timestamp,
  ),
  unreadCount: Map<String, int>.from(json['unreadCount'] as Map),
);

Map<String, dynamic> _$ChatToJson(_Chat instance) => <String, dynamic>{
  'participants': instance.participants,
  'bookId': instance.bookId,
  'lastMessage': instance.lastMessage.toJson(),
  'createdAt': const TimestampConverter().toJson(instance.createdAt),
  'unreadCount': instance.unreadCount,
};
