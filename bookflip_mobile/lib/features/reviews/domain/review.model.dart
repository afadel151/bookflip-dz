
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:bookflip_mobile/utils/timestamp_converter.dart';

part 'review.model.freezed.dart';
part 'review.model.g.dart';


enum ReviewTargetType {
  @JsonValue('book')
  book,
  @JsonValue('user')
  user,
}

class Rating {
  static const List<int> validRatings = [1, 2, 3, 4, 5];
}


@freezed
abstract class Review with _$Review {
  const factory Review({
    required String reviewerId, 
    
    required ReviewTargetType targetType, 
    
    required String targetId, 
    
    required int rating, 
    
    required String comment, 
    
    @TimestampConverter()
    required DateTime timestamp,
    
    List<String>? photos,
  }) = _Review;

  factory Review.fromJson(Map<String, dynamic> json) => _$ReviewFromJson(json);
}