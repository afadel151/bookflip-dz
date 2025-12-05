
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:bookflip_mobile/utils/timestamp_converter.dart';


part 'user.model.freezed.dart';
part 'user.model.g.dart';

@freezed
abstract class Location with _$Location {
  const factory Location({
    required double lat,
    required double lng,
    
    required String addressText, 
  }) = _Location;

  factory Location.fromJson(Map<String, dynamic> json) => _$LocationFromJson(json);
}


@freezed
abstract class UserStats with _$UserStats {
  const factory UserStats({
    required int booksSold, 
    required int booksTraded, 
    required double avgRating, 
    required int totalReviews, 
  }) = _UserStats;

  factory UserStats.fromJson(Map<String, dynamic> json) => _$UserStatsFromJson(json);
}

@freezed
abstract class User with _$User {
  @JsonSerializable(explicitToJson: true)
  const factory User({
    required String displayName, 
    required String email, 
    required String photoURL, 
    String? phoneNumber, 

    @TimestampConverter()
    required DateTime createdAt,
    @TimestampConverter()
    required DateTime lastActive,

    Location? location, 

    required UserStats stats, 
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}