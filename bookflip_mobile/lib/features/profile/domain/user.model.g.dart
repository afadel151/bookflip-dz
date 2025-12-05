// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Location _$LocationFromJson(Map<String, dynamic> json) => _Location(
  lat: (json['lat'] as num).toDouble(),
  lng: (json['lng'] as num).toDouble(),
  addressText: json['addressText'] as String,
);

Map<String, dynamic> _$LocationToJson(_Location instance) => <String, dynamic>{
  'lat': instance.lat,
  'lng': instance.lng,
  'addressText': instance.addressText,
};

_UserStats _$UserStatsFromJson(Map<String, dynamic> json) => _UserStats(
  booksSold: (json['booksSold'] as num).toInt(),
  booksTraded: (json['booksTraded'] as num).toInt(),
  avgRating: (json['avgRating'] as num).toDouble(),
  totalReviews: (json['totalReviews'] as num).toInt(),
);

Map<String, dynamic> _$UserStatsToJson(_UserStats instance) =>
    <String, dynamic>{
      'booksSold': instance.booksSold,
      'booksTraded': instance.booksTraded,
      'avgRating': instance.avgRating,
      'totalReviews': instance.totalReviews,
    };

_User _$UserFromJson(Map<String, dynamic> json) => _User(
  displayName: json['displayName'] as String,
  email: json['email'] as String,
  photoURL: json['photoURL'] as String,
  phoneNumber: json['phoneNumber'] as String?,
  createdAt: const TimestampConverter().fromJson(
    json['createdAt'] as Timestamp,
  ),
  lastActive: const TimestampConverter().fromJson(
    json['lastActive'] as Timestamp,
  ),
  location: json['location'] == null
      ? null
      : Location.fromJson(json['location'] as Map<String, dynamic>),
  stats: UserStats.fromJson(json['stats'] as Map<String, dynamic>),
);

Map<String, dynamic> _$UserToJson(_User instance) => <String, dynamic>{
  'displayName': instance.displayName,
  'email': instance.email,
  'photoURL': instance.photoURL,
  'phoneNumber': instance.phoneNumber,
  'createdAt': const TimestampConverter().toJson(instance.createdAt),
  'lastActive': const TimestampConverter().toJson(instance.lastActive),
  'location': instance.location?.toJson(),
  'stats': instance.stats.toJson(),
};
