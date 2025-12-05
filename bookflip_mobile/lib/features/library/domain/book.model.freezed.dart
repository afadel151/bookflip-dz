// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'book.model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SeriesInfo {

 String get name; int get number;
/// Create a copy of SeriesInfo
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SeriesInfoCopyWith<SeriesInfo> get copyWith => _$SeriesInfoCopyWithImpl<SeriesInfo>(this as SeriesInfo, _$identity);

  /// Serializes this SeriesInfo to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SeriesInfo&&(identical(other.name, name) || other.name == name)&&(identical(other.number, number) || other.number == number));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,number);

@override
String toString() {
  return 'SeriesInfo(name: $name, number: $number)';
}


}

/// @nodoc
abstract mixin class $SeriesInfoCopyWith<$Res>  {
  factory $SeriesInfoCopyWith(SeriesInfo value, $Res Function(SeriesInfo) _then) = _$SeriesInfoCopyWithImpl;
@useResult
$Res call({
 String name, int number
});




}
/// @nodoc
class _$SeriesInfoCopyWithImpl<$Res>
    implements $SeriesInfoCopyWith<$Res> {
  _$SeriesInfoCopyWithImpl(this._self, this._then);

  final SeriesInfo _self;
  final $Res Function(SeriesInfo) _then;

/// Create a copy of SeriesInfo
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? number = null,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,number: null == number ? _self.number : number // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [SeriesInfo].
extension SeriesInfoPatterns on SeriesInfo {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SeriesInfo value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SeriesInfo() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SeriesInfo value)  $default,){
final _that = this;
switch (_that) {
case _SeriesInfo():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SeriesInfo value)?  $default,){
final _that = this;
switch (_that) {
case _SeriesInfo() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name,  int number)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SeriesInfo() when $default != null:
return $default(_that.name,_that.number);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name,  int number)  $default,) {final _that = this;
switch (_that) {
case _SeriesInfo():
return $default(_that.name,_that.number);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name,  int number)?  $default,) {final _that = this;
switch (_that) {
case _SeriesInfo() when $default != null:
return $default(_that.name,_that.number);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SeriesInfo implements SeriesInfo {
  const _SeriesInfo({required this.name, required this.number});
  factory _SeriesInfo.fromJson(Map<String, dynamic> json) => _$SeriesInfoFromJson(json);

@override final  String name;
@override final  int number;

/// Create a copy of SeriesInfo
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SeriesInfoCopyWith<_SeriesInfo> get copyWith => __$SeriesInfoCopyWithImpl<_SeriesInfo>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SeriesInfoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SeriesInfo&&(identical(other.name, name) || other.name == name)&&(identical(other.number, number) || other.number == number));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,number);

@override
String toString() {
  return 'SeriesInfo(name: $name, number: $number)';
}


}

/// @nodoc
abstract mixin class _$SeriesInfoCopyWith<$Res> implements $SeriesInfoCopyWith<$Res> {
  factory _$SeriesInfoCopyWith(_SeriesInfo value, $Res Function(_SeriesInfo) _then) = __$SeriesInfoCopyWithImpl;
@override @useResult
$Res call({
 String name, int number
});




}
/// @nodoc
class __$SeriesInfoCopyWithImpl<$Res>
    implements _$SeriesInfoCopyWith<$Res> {
  __$SeriesInfoCopyWithImpl(this._self, this._then);

  final _SeriesInfo _self;
  final $Res Function(_SeriesInfo) _then;

/// Create a copy of SeriesInfo
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? number = null,}) {
  return _then(_SeriesInfo(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,number: null == number ? _self.number : number // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}


/// @nodoc
mixin _$Book {

 String get title; String get author; String get description; String? get isbn; BookCondition get condition; BookType get type; BookFormat get format; SeriesInfo? get series; String get ownerId; double? get price; bool get isAvailable; ListingType get listingType; List<String> get images;@TimestampConverter() DateTime get createdAt;@TimestampConverter() DateTime get lastModified; int get views;
/// Create a copy of Book
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BookCopyWith<Book> get copyWith => _$BookCopyWithImpl<Book>(this as Book, _$identity);

  /// Serializes this Book to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Book&&(identical(other.title, title) || other.title == title)&&(identical(other.author, author) || other.author == author)&&(identical(other.description, description) || other.description == description)&&(identical(other.isbn, isbn) || other.isbn == isbn)&&(identical(other.condition, condition) || other.condition == condition)&&(identical(other.type, type) || other.type == type)&&(identical(other.format, format) || other.format == format)&&(identical(other.series, series) || other.series == series)&&(identical(other.ownerId, ownerId) || other.ownerId == ownerId)&&(identical(other.price, price) || other.price == price)&&(identical(other.isAvailable, isAvailable) || other.isAvailable == isAvailable)&&(identical(other.listingType, listingType) || other.listingType == listingType)&&const DeepCollectionEquality().equals(other.images, images)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.lastModified, lastModified) || other.lastModified == lastModified)&&(identical(other.views, views) || other.views == views));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,author,description,isbn,condition,type,format,series,ownerId,price,isAvailable,listingType,const DeepCollectionEquality().hash(images),createdAt,lastModified,views);

@override
String toString() {
  return 'Book(title: $title, author: $author, description: $description, isbn: $isbn, condition: $condition, type: $type, format: $format, series: $series, ownerId: $ownerId, price: $price, isAvailable: $isAvailable, listingType: $listingType, images: $images, createdAt: $createdAt, lastModified: $lastModified, views: $views)';
}


}

/// @nodoc
abstract mixin class $BookCopyWith<$Res>  {
  factory $BookCopyWith(Book value, $Res Function(Book) _then) = _$BookCopyWithImpl;
@useResult
$Res call({
 String title, String author, String description, String? isbn, BookCondition condition, BookType type, BookFormat format, SeriesInfo? series, String ownerId, double? price, bool isAvailable, ListingType listingType, List<String> images,@TimestampConverter() DateTime createdAt,@TimestampConverter() DateTime lastModified, int views
});


$SeriesInfoCopyWith<$Res>? get series;

}
/// @nodoc
class _$BookCopyWithImpl<$Res>
    implements $BookCopyWith<$Res> {
  _$BookCopyWithImpl(this._self, this._then);

  final Book _self;
  final $Res Function(Book) _then;

/// Create a copy of Book
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? title = null,Object? author = null,Object? description = null,Object? isbn = freezed,Object? condition = null,Object? type = null,Object? format = null,Object? series = freezed,Object? ownerId = null,Object? price = freezed,Object? isAvailable = null,Object? listingType = null,Object? images = null,Object? createdAt = null,Object? lastModified = null,Object? views = null,}) {
  return _then(_self.copyWith(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,author: null == author ? _self.author : author // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,isbn: freezed == isbn ? _self.isbn : isbn // ignore: cast_nullable_to_non_nullable
as String?,condition: null == condition ? _self.condition : condition // ignore: cast_nullable_to_non_nullable
as BookCondition,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as BookType,format: null == format ? _self.format : format // ignore: cast_nullable_to_non_nullable
as BookFormat,series: freezed == series ? _self.series : series // ignore: cast_nullable_to_non_nullable
as SeriesInfo?,ownerId: null == ownerId ? _self.ownerId : ownerId // ignore: cast_nullable_to_non_nullable
as String,price: freezed == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as double?,isAvailable: null == isAvailable ? _self.isAvailable : isAvailable // ignore: cast_nullable_to_non_nullable
as bool,listingType: null == listingType ? _self.listingType : listingType // ignore: cast_nullable_to_non_nullable
as ListingType,images: null == images ? _self.images : images // ignore: cast_nullable_to_non_nullable
as List<String>,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,lastModified: null == lastModified ? _self.lastModified : lastModified // ignore: cast_nullable_to_non_nullable
as DateTime,views: null == views ? _self.views : views // ignore: cast_nullable_to_non_nullable
as int,
  ));
}
/// Create a copy of Book
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SeriesInfoCopyWith<$Res>? get series {
    if (_self.series == null) {
    return null;
  }

  return $SeriesInfoCopyWith<$Res>(_self.series!, (value) {
    return _then(_self.copyWith(series: value));
  });
}
}


/// Adds pattern-matching-related methods to [Book].
extension BookPatterns on Book {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Book value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Book() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Book value)  $default,){
final _that = this;
switch (_that) {
case _Book():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Book value)?  $default,){
final _that = this;
switch (_that) {
case _Book() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String title,  String author,  String description,  String? isbn,  BookCondition condition,  BookType type,  BookFormat format,  SeriesInfo? series,  String ownerId,  double? price,  bool isAvailable,  ListingType listingType,  List<String> images, @TimestampConverter()  DateTime createdAt, @TimestampConverter()  DateTime lastModified,  int views)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Book() when $default != null:
return $default(_that.title,_that.author,_that.description,_that.isbn,_that.condition,_that.type,_that.format,_that.series,_that.ownerId,_that.price,_that.isAvailable,_that.listingType,_that.images,_that.createdAt,_that.lastModified,_that.views);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String title,  String author,  String description,  String? isbn,  BookCondition condition,  BookType type,  BookFormat format,  SeriesInfo? series,  String ownerId,  double? price,  bool isAvailable,  ListingType listingType,  List<String> images, @TimestampConverter()  DateTime createdAt, @TimestampConverter()  DateTime lastModified,  int views)  $default,) {final _that = this;
switch (_that) {
case _Book():
return $default(_that.title,_that.author,_that.description,_that.isbn,_that.condition,_that.type,_that.format,_that.series,_that.ownerId,_that.price,_that.isAvailable,_that.listingType,_that.images,_that.createdAt,_that.lastModified,_that.views);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String title,  String author,  String description,  String? isbn,  BookCondition condition,  BookType type,  BookFormat format,  SeriesInfo? series,  String ownerId,  double? price,  bool isAvailable,  ListingType listingType,  List<String> images, @TimestampConverter()  DateTime createdAt, @TimestampConverter()  DateTime lastModified,  int views)?  $default,) {final _that = this;
switch (_that) {
case _Book() when $default != null:
return $default(_that.title,_that.author,_that.description,_that.isbn,_that.condition,_that.type,_that.format,_that.series,_that.ownerId,_that.price,_that.isAvailable,_that.listingType,_that.images,_that.createdAt,_that.lastModified,_that.views);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _Book implements Book {
  const _Book({required this.title, required this.author, required this.description, this.isbn, required this.condition, required this.type, required this.format, this.series, required this.ownerId, this.price, required this.isAvailable, required this.listingType, required final  List<String> images, @TimestampConverter() required this.createdAt, @TimestampConverter() required this.lastModified, required this.views}): _images = images;
  factory _Book.fromJson(Map<String, dynamic> json) => _$BookFromJson(json);

@override final  String title;
@override final  String author;
@override final  String description;
@override final  String? isbn;
@override final  BookCondition condition;
@override final  BookType type;
@override final  BookFormat format;
@override final  SeriesInfo? series;
@override final  String ownerId;
@override final  double? price;
@override final  bool isAvailable;
@override final  ListingType listingType;
 final  List<String> _images;
@override List<String> get images {
  if (_images is EqualUnmodifiableListView) return _images;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_images);
}

@override@TimestampConverter() final  DateTime createdAt;
@override@TimestampConverter() final  DateTime lastModified;
@override final  int views;

/// Create a copy of Book
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BookCopyWith<_Book> get copyWith => __$BookCopyWithImpl<_Book>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BookToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Book&&(identical(other.title, title) || other.title == title)&&(identical(other.author, author) || other.author == author)&&(identical(other.description, description) || other.description == description)&&(identical(other.isbn, isbn) || other.isbn == isbn)&&(identical(other.condition, condition) || other.condition == condition)&&(identical(other.type, type) || other.type == type)&&(identical(other.format, format) || other.format == format)&&(identical(other.series, series) || other.series == series)&&(identical(other.ownerId, ownerId) || other.ownerId == ownerId)&&(identical(other.price, price) || other.price == price)&&(identical(other.isAvailable, isAvailable) || other.isAvailable == isAvailable)&&(identical(other.listingType, listingType) || other.listingType == listingType)&&const DeepCollectionEquality().equals(other._images, _images)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.lastModified, lastModified) || other.lastModified == lastModified)&&(identical(other.views, views) || other.views == views));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,author,description,isbn,condition,type,format,series,ownerId,price,isAvailable,listingType,const DeepCollectionEquality().hash(_images),createdAt,lastModified,views);

@override
String toString() {
  return 'Book(title: $title, author: $author, description: $description, isbn: $isbn, condition: $condition, type: $type, format: $format, series: $series, ownerId: $ownerId, price: $price, isAvailable: $isAvailable, listingType: $listingType, images: $images, createdAt: $createdAt, lastModified: $lastModified, views: $views)';
}


}

/// @nodoc
abstract mixin class _$BookCopyWith<$Res> implements $BookCopyWith<$Res> {
  factory _$BookCopyWith(_Book value, $Res Function(_Book) _then) = __$BookCopyWithImpl;
@override @useResult
$Res call({
 String title, String author, String description, String? isbn, BookCondition condition, BookType type, BookFormat format, SeriesInfo? series, String ownerId, double? price, bool isAvailable, ListingType listingType, List<String> images,@TimestampConverter() DateTime createdAt,@TimestampConverter() DateTime lastModified, int views
});


@override $SeriesInfoCopyWith<$Res>? get series;

}
/// @nodoc
class __$BookCopyWithImpl<$Res>
    implements _$BookCopyWith<$Res> {
  __$BookCopyWithImpl(this._self, this._then);

  final _Book _self;
  final $Res Function(_Book) _then;

/// Create a copy of Book
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? title = null,Object? author = null,Object? description = null,Object? isbn = freezed,Object? condition = null,Object? type = null,Object? format = null,Object? series = freezed,Object? ownerId = null,Object? price = freezed,Object? isAvailable = null,Object? listingType = null,Object? images = null,Object? createdAt = null,Object? lastModified = null,Object? views = null,}) {
  return _then(_Book(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,author: null == author ? _self.author : author // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,isbn: freezed == isbn ? _self.isbn : isbn // ignore: cast_nullable_to_non_nullable
as String?,condition: null == condition ? _self.condition : condition // ignore: cast_nullable_to_non_nullable
as BookCondition,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as BookType,format: null == format ? _self.format : format // ignore: cast_nullable_to_non_nullable
as BookFormat,series: freezed == series ? _self.series : series // ignore: cast_nullable_to_non_nullable
as SeriesInfo?,ownerId: null == ownerId ? _self.ownerId : ownerId // ignore: cast_nullable_to_non_nullable
as String,price: freezed == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as double?,isAvailable: null == isAvailable ? _self.isAvailable : isAvailable // ignore: cast_nullable_to_non_nullable
as bool,listingType: null == listingType ? _self.listingType : listingType // ignore: cast_nullable_to_non_nullable
as ListingType,images: null == images ? _self._images : images // ignore: cast_nullable_to_non_nullable
as List<String>,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,lastModified: null == lastModified ? _self.lastModified : lastModified // ignore: cast_nullable_to_non_nullable
as DateTime,views: null == views ? _self.views : views // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

/// Create a copy of Book
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SeriesInfoCopyWith<$Res>? get series {
    if (_self.series == null) {
    return null;
  }

  return $SeriesInfoCopyWith<$Res>(_self.series!, (value) {
    return _then(_self.copyWith(series: value));
  });
}
}

// dart format on
