// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'review.model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Review {

 String get reviewerId; ReviewTargetType get targetType; String get targetId; int get rating; String get comment;@TimestampConverter() DateTime get timestamp; List<String>? get photos;
/// Create a copy of Review
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReviewCopyWith<Review> get copyWith => _$ReviewCopyWithImpl<Review>(this as Review, _$identity);

  /// Serializes this Review to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Review&&(identical(other.reviewerId, reviewerId) || other.reviewerId == reviewerId)&&(identical(other.targetType, targetType) || other.targetType == targetType)&&(identical(other.targetId, targetId) || other.targetId == targetId)&&(identical(other.rating, rating) || other.rating == rating)&&(identical(other.comment, comment) || other.comment == comment)&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp)&&const DeepCollectionEquality().equals(other.photos, photos));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,reviewerId,targetType,targetId,rating,comment,timestamp,const DeepCollectionEquality().hash(photos));

@override
String toString() {
  return 'Review(reviewerId: $reviewerId, targetType: $targetType, targetId: $targetId, rating: $rating, comment: $comment, timestamp: $timestamp, photos: $photos)';
}


}

/// @nodoc
abstract mixin class $ReviewCopyWith<$Res>  {
  factory $ReviewCopyWith(Review value, $Res Function(Review) _then) = _$ReviewCopyWithImpl;
@useResult
$Res call({
 String reviewerId, ReviewTargetType targetType, String targetId, int rating, String comment,@TimestampConverter() DateTime timestamp, List<String>? photos
});




}
/// @nodoc
class _$ReviewCopyWithImpl<$Res>
    implements $ReviewCopyWith<$Res> {
  _$ReviewCopyWithImpl(this._self, this._then);

  final Review _self;
  final $Res Function(Review) _then;

/// Create a copy of Review
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? reviewerId = null,Object? targetType = null,Object? targetId = null,Object? rating = null,Object? comment = null,Object? timestamp = null,Object? photos = freezed,}) {
  return _then(_self.copyWith(
reviewerId: null == reviewerId ? _self.reviewerId : reviewerId // ignore: cast_nullable_to_non_nullable
as String,targetType: null == targetType ? _self.targetType : targetType // ignore: cast_nullable_to_non_nullable
as ReviewTargetType,targetId: null == targetId ? _self.targetId : targetId // ignore: cast_nullable_to_non_nullable
as String,rating: null == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as int,comment: null == comment ? _self.comment : comment // ignore: cast_nullable_to_non_nullable
as String,timestamp: null == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as DateTime,photos: freezed == photos ? _self.photos : photos // ignore: cast_nullable_to_non_nullable
as List<String>?,
  ));
}

}


/// Adds pattern-matching-related methods to [Review].
extension ReviewPatterns on Review {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Review value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Review() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Review value)  $default,){
final _that = this;
switch (_that) {
case _Review():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Review value)?  $default,){
final _that = this;
switch (_that) {
case _Review() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String reviewerId,  ReviewTargetType targetType,  String targetId,  int rating,  String comment, @TimestampConverter()  DateTime timestamp,  List<String>? photos)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Review() when $default != null:
return $default(_that.reviewerId,_that.targetType,_that.targetId,_that.rating,_that.comment,_that.timestamp,_that.photos);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String reviewerId,  ReviewTargetType targetType,  String targetId,  int rating,  String comment, @TimestampConverter()  DateTime timestamp,  List<String>? photos)  $default,) {final _that = this;
switch (_that) {
case _Review():
return $default(_that.reviewerId,_that.targetType,_that.targetId,_that.rating,_that.comment,_that.timestamp,_that.photos);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String reviewerId,  ReviewTargetType targetType,  String targetId,  int rating,  String comment, @TimestampConverter()  DateTime timestamp,  List<String>? photos)?  $default,) {final _that = this;
switch (_that) {
case _Review() when $default != null:
return $default(_that.reviewerId,_that.targetType,_that.targetId,_that.rating,_that.comment,_that.timestamp,_that.photos);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Review implements Review {
  const _Review({required this.reviewerId, required this.targetType, required this.targetId, required this.rating, required this.comment, @TimestampConverter() required this.timestamp, final  List<String>? photos}): _photos = photos;
  factory _Review.fromJson(Map<String, dynamic> json) => _$ReviewFromJson(json);

@override final  String reviewerId;
@override final  ReviewTargetType targetType;
@override final  String targetId;
@override final  int rating;
@override final  String comment;
@override@TimestampConverter() final  DateTime timestamp;
 final  List<String>? _photos;
@override List<String>? get photos {
  final value = _photos;
  if (value == null) return null;
  if (_photos is EqualUnmodifiableListView) return _photos;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of Review
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReviewCopyWith<_Review> get copyWith => __$ReviewCopyWithImpl<_Review>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ReviewToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Review&&(identical(other.reviewerId, reviewerId) || other.reviewerId == reviewerId)&&(identical(other.targetType, targetType) || other.targetType == targetType)&&(identical(other.targetId, targetId) || other.targetId == targetId)&&(identical(other.rating, rating) || other.rating == rating)&&(identical(other.comment, comment) || other.comment == comment)&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp)&&const DeepCollectionEquality().equals(other._photos, _photos));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,reviewerId,targetType,targetId,rating,comment,timestamp,const DeepCollectionEquality().hash(_photos));

@override
String toString() {
  return 'Review(reviewerId: $reviewerId, targetType: $targetType, targetId: $targetId, rating: $rating, comment: $comment, timestamp: $timestamp, photos: $photos)';
}


}

/// @nodoc
abstract mixin class _$ReviewCopyWith<$Res> implements $ReviewCopyWith<$Res> {
  factory _$ReviewCopyWith(_Review value, $Res Function(_Review) _then) = __$ReviewCopyWithImpl;
@override @useResult
$Res call({
 String reviewerId, ReviewTargetType targetType, String targetId, int rating, String comment,@TimestampConverter() DateTime timestamp, List<String>? photos
});




}
/// @nodoc
class __$ReviewCopyWithImpl<$Res>
    implements _$ReviewCopyWith<$Res> {
  __$ReviewCopyWithImpl(this._self, this._then);

  final _Review _self;
  final $Res Function(_Review) _then;

/// Create a copy of Review
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? reviewerId = null,Object? targetType = null,Object? targetId = null,Object? rating = null,Object? comment = null,Object? timestamp = null,Object? photos = freezed,}) {
  return _then(_Review(
reviewerId: null == reviewerId ? _self.reviewerId : reviewerId // ignore: cast_nullable_to_non_nullable
as String,targetType: null == targetType ? _self.targetType : targetType // ignore: cast_nullable_to_non_nullable
as ReviewTargetType,targetId: null == targetId ? _self.targetId : targetId // ignore: cast_nullable_to_non_nullable
as String,rating: null == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as int,comment: null == comment ? _self.comment : comment // ignore: cast_nullable_to_non_nullable
as String,timestamp: null == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as DateTime,photos: freezed == photos ? _self._photos : photos // ignore: cast_nullable_to_non_nullable
as List<String>?,
  ));
}


}

// dart format on
