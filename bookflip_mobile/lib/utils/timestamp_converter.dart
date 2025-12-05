// timestamp_converter.dart

import 'package:json_annotation/json_annotation.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

/// A converter that handles serialization between Firestore's [Timestamp]
/// and a standard Dart [DateTime] in JSON (Map) format.
class TimestampConverter implements JsonConverter<DateTime, Timestamp> {
  const TimestampConverter();

  // Convert from Firestore's Timestamp to Dart's DateTime
  @override
  DateTime fromJson(Timestamp timestamp) {
    return timestamp.toDate();
  }

  // Convert from Dart's DateTime back to Firestore's Timestamp
  @override
  Timestamp toJson(DateTime date) {
    return Timestamp.fromDate(date);
  }
}