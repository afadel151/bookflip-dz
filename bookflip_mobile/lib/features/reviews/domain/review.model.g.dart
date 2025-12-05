// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'review.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Review _$ReviewFromJson(Map<String, dynamic> json) => _Review(
  reviewerId: json['reviewerId'] as String,
  targetType: $enumDecode(_$ReviewTargetTypeEnumMap, json['targetType']),
  targetId: json['targetId'] as String,
  rating: (json['rating'] as num).toInt(),
  comment: json['comment'] as String,
  timestamp: const TimestampConverter().fromJson(
    json['timestamp'] as Timestamp,
  ),
  photos: (json['photos'] as List<dynamic>?)?.map((e) => e as String).toList(),
);

Map<String, dynamic> _$ReviewToJson(_Review instance) => <String, dynamic>{
  'reviewerId': instance.reviewerId,
  'targetType': _$ReviewTargetTypeEnumMap[instance.targetType]!,
  'targetId': instance.targetId,
  'rating': instance.rating,
  'comment': instance.comment,
  'timestamp': const TimestampConverter().toJson(instance.timestamp),
  'photos': instance.photos,
};

const _$ReviewTargetTypeEnumMap = {
  ReviewTargetType.book: 'book',
  ReviewTargetType.user: 'user',
};
