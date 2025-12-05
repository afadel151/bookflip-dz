
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:bookflip_mobile/utils/timestamp_converter.dart';


part 'book.model.freezed.dart';
part 'book.model.g.dart';


enum BookCondition {
  @JsonValue('new')
  newCondition,
  @JsonValue('like_new')
  likeNew,
  @JsonValue('good')
  good,
  @JsonValue('fair')
  fair,
  @JsonValue('poor')
  poor,
}

enum BookType {
  @JsonValue('original')
  original,
  @JsonValue('copy')
  copy
}

enum BookFormat {
  @JsonValue('hardcover')
  hardcover,
  @JsonValue('paperback')
  paperback,
  @JsonValue('pocket')
  pocket,
}

enum ListingType {
  @JsonValue('sell')
  sell,
  @JsonValue('trade')
  trade,
  @JsonValue('both')
  both,
}


@freezed
abstract class SeriesInfo with _$SeriesInfo {
  const factory SeriesInfo({
    required String name, 
    required int number, 
  }) = _SeriesInfo;

  factory SeriesInfo.fromJson(Map<String, dynamic> json) => _$SeriesInfoFromJson(json);
}


@freezed
abstract class Book with _$Book {
  @JsonSerializable(explicitToJson: true)
  const factory Book({
    required String title, 
    required String author, 
    required String description, 
    String? isbn, 
    
    required BookCondition condition,
    required BookType type, 
    required BookFormat format, 
    
    SeriesInfo? series, 

    required String ownerId, 
    double? price, 
    required bool isAvailable, 
    
    required ListingType listingType, 
    
    required List<String> images, 
    
    @TimestampConverter()
    required DateTime createdAt,
    @TimestampConverter()
    required DateTime lastModified,
    
    required int views, 
  }) = _Book;

  factory Book.fromJson(Map<String, dynamic> json) => _$BookFromJson(json);
}