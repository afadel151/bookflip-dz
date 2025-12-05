// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Message _$MessageFromJson(Map<String, dynamic> json) => _Message(
  text: json['text'] as String,
  senderId: json['senderId'] as String,
  timestamp: const TimestampConverter().fromJson(
    json['timestamp'] as Timestamp,
  ),
  attachments: (json['attachments'] as List<dynamic>?)
      ?.map((e) => e as String)
      .toList(),
);

Map<String, dynamic> _$MessageToJson(_Message instance) => <String, dynamic>{
  'text': instance.text,
  'senderId': instance.senderId,
  'timestamp': const TimestampConverter().toJson(instance.timestamp),
  'attachments': instance.attachments,
};
