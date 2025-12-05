// message.model.dart

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
// Import your custom converter
import 'package:bookflip_mobile/utils/timestamp_converter.dart';

part 'message.model.freezed.dart';
part 'message.model.g.dart';

// --- Main Class: Message ---
@freezed
abstract class Message with _$Message {
  const factory Message({
    required String text,
    required String senderId,
    
    // Timestamp field using the converter
    @TimestampConverter()
    required DateTime timestamp,
    
    // Optional: Firebase Storage URLs (images/docs)
    List<String>? attachments,
  }) = _Message;

  factory Message.fromJson(Map<String, dynamic> json) => _$MessageFromJson(json);
}