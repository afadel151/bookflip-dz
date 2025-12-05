// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transaction.model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PaymentDetails {

 PaymentMethod get method; String? get transactionId; PaymentStatus? get status;
/// Create a copy of PaymentDetails
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PaymentDetailsCopyWith<PaymentDetails> get copyWith => _$PaymentDetailsCopyWithImpl<PaymentDetails>(this as PaymentDetails, _$identity);

  /// Serializes this PaymentDetails to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PaymentDetails&&(identical(other.method, method) || other.method == method)&&(identical(other.transactionId, transactionId) || other.transactionId == transactionId)&&(identical(other.status, status) || other.status == status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,method,transactionId,status);

@override
String toString() {
  return 'PaymentDetails(method: $method, transactionId: $transactionId, status: $status)';
}


}

/// @nodoc
abstract mixin class $PaymentDetailsCopyWith<$Res>  {
  factory $PaymentDetailsCopyWith(PaymentDetails value, $Res Function(PaymentDetails) _then) = _$PaymentDetailsCopyWithImpl;
@useResult
$Res call({
 PaymentMethod method, String? transactionId, PaymentStatus? status
});




}
/// @nodoc
class _$PaymentDetailsCopyWithImpl<$Res>
    implements $PaymentDetailsCopyWith<$Res> {
  _$PaymentDetailsCopyWithImpl(this._self, this._then);

  final PaymentDetails _self;
  final $Res Function(PaymentDetails) _then;

/// Create a copy of PaymentDetails
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? method = null,Object? transactionId = freezed,Object? status = freezed,}) {
  return _then(_self.copyWith(
method: null == method ? _self.method : method // ignore: cast_nullable_to_non_nullable
as PaymentMethod,transactionId: freezed == transactionId ? _self.transactionId : transactionId // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as PaymentStatus?,
  ));
}

}


/// Adds pattern-matching-related methods to [PaymentDetails].
extension PaymentDetailsPatterns on PaymentDetails {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PaymentDetails value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PaymentDetails() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PaymentDetails value)  $default,){
final _that = this;
switch (_that) {
case _PaymentDetails():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PaymentDetails value)?  $default,){
final _that = this;
switch (_that) {
case _PaymentDetails() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( PaymentMethod method,  String? transactionId,  PaymentStatus? status)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PaymentDetails() when $default != null:
return $default(_that.method,_that.transactionId,_that.status);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( PaymentMethod method,  String? transactionId,  PaymentStatus? status)  $default,) {final _that = this;
switch (_that) {
case _PaymentDetails():
return $default(_that.method,_that.transactionId,_that.status);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( PaymentMethod method,  String? transactionId,  PaymentStatus? status)?  $default,) {final _that = this;
switch (_that) {
case _PaymentDetails() when $default != null:
return $default(_that.method,_that.transactionId,_that.status);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PaymentDetails implements PaymentDetails {
  const _PaymentDetails({required this.method, this.transactionId, this.status});
  factory _PaymentDetails.fromJson(Map<String, dynamic> json) => _$PaymentDetailsFromJson(json);

@override final  PaymentMethod method;
@override final  String? transactionId;
@override final  PaymentStatus? status;

/// Create a copy of PaymentDetails
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PaymentDetailsCopyWith<_PaymentDetails> get copyWith => __$PaymentDetailsCopyWithImpl<_PaymentDetails>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PaymentDetailsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PaymentDetails&&(identical(other.method, method) || other.method == method)&&(identical(other.transactionId, transactionId) || other.transactionId == transactionId)&&(identical(other.status, status) || other.status == status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,method,transactionId,status);

@override
String toString() {
  return 'PaymentDetails(method: $method, transactionId: $transactionId, status: $status)';
}


}

/// @nodoc
abstract mixin class _$PaymentDetailsCopyWith<$Res> implements $PaymentDetailsCopyWith<$Res> {
  factory _$PaymentDetailsCopyWith(_PaymentDetails value, $Res Function(_PaymentDetails) _then) = __$PaymentDetailsCopyWithImpl;
@override @useResult
$Res call({
 PaymentMethod method, String? transactionId, PaymentStatus? status
});




}
/// @nodoc
class __$PaymentDetailsCopyWithImpl<$Res>
    implements _$PaymentDetailsCopyWith<$Res> {
  __$PaymentDetailsCopyWithImpl(this._self, this._then);

  final _PaymentDetails _self;
  final $Res Function(_PaymentDetails) _then;

/// Create a copy of PaymentDetails
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? method = null,Object? transactionId = freezed,Object? status = freezed,}) {
  return _then(_PaymentDetails(
method: null == method ? _self.method : method // ignore: cast_nullable_to_non_nullable
as PaymentMethod,transactionId: freezed == transactionId ? _self.transactionId : transactionId // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as PaymentStatus?,
  ));
}


}


/// @nodoc
mixin _$Transaction {

 TransactionType get type; TransactionStatus get status;@TimestampConverter() DateTime get createdAt;@TimestampConverter() String get bookId; String get fromUserId; String get toUserId; double? get price; PaymentDetails? get paymentDetails; String? get tradeGroupId; String? get tradedForBookId; Location? get location;
/// Create a copy of Transaction
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TransactionCopyWith<Transaction> get copyWith => _$TransactionCopyWithImpl<Transaction>(this as Transaction, _$identity);

  /// Serializes this Transaction to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Transaction&&(identical(other.type, type) || other.type == type)&&(identical(other.status, status) || other.status == status)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.bookId, bookId) || other.bookId == bookId)&&(identical(other.fromUserId, fromUserId) || other.fromUserId == fromUserId)&&(identical(other.toUserId, toUserId) || other.toUserId == toUserId)&&(identical(other.price, price) || other.price == price)&&(identical(other.paymentDetails, paymentDetails) || other.paymentDetails == paymentDetails)&&(identical(other.tradeGroupId, tradeGroupId) || other.tradeGroupId == tradeGroupId)&&(identical(other.tradedForBookId, tradedForBookId) || other.tradedForBookId == tradedForBookId)&&(identical(other.location, location) || other.location == location));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,type,status,createdAt,bookId,fromUserId,toUserId,price,paymentDetails,tradeGroupId,tradedForBookId,location);

@override
String toString() {
  return 'Transaction(type: $type, status: $status, createdAt: $createdAt, bookId: $bookId, fromUserId: $fromUserId, toUserId: $toUserId, price: $price, paymentDetails: $paymentDetails, tradeGroupId: $tradeGroupId, tradedForBookId: $tradedForBookId, location: $location)';
}


}

/// @nodoc
abstract mixin class $TransactionCopyWith<$Res>  {
  factory $TransactionCopyWith(Transaction value, $Res Function(Transaction) _then) = _$TransactionCopyWithImpl;
@useResult
$Res call({
 TransactionType type, TransactionStatus status,@TimestampConverter() DateTime createdAt,@TimestampConverter() String bookId, String fromUserId, String toUserId, double? price, PaymentDetails? paymentDetails, String? tradeGroupId, String? tradedForBookId, Location? location
});


$PaymentDetailsCopyWith<$Res>? get paymentDetails;$LocationCopyWith<$Res>? get location;

}
/// @nodoc
class _$TransactionCopyWithImpl<$Res>
    implements $TransactionCopyWith<$Res> {
  _$TransactionCopyWithImpl(this._self, this._then);

  final Transaction _self;
  final $Res Function(Transaction) _then;

/// Create a copy of Transaction
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? type = null,Object? status = null,Object? createdAt = null,Object? bookId = null,Object? fromUserId = null,Object? toUserId = null,Object? price = freezed,Object? paymentDetails = freezed,Object? tradeGroupId = freezed,Object? tradedForBookId = freezed,Object? location = freezed,}) {
  return _then(_self.copyWith(
type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as TransactionType,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as TransactionStatus,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,bookId: null == bookId ? _self.bookId : bookId // ignore: cast_nullable_to_non_nullable
as String,fromUserId: null == fromUserId ? _self.fromUserId : fromUserId // ignore: cast_nullable_to_non_nullable
as String,toUserId: null == toUserId ? _self.toUserId : toUserId // ignore: cast_nullable_to_non_nullable
as String,price: freezed == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as double?,paymentDetails: freezed == paymentDetails ? _self.paymentDetails : paymentDetails // ignore: cast_nullable_to_non_nullable
as PaymentDetails?,tradeGroupId: freezed == tradeGroupId ? _self.tradeGroupId : tradeGroupId // ignore: cast_nullable_to_non_nullable
as String?,tradedForBookId: freezed == tradedForBookId ? _self.tradedForBookId : tradedForBookId // ignore: cast_nullable_to_non_nullable
as String?,location: freezed == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as Location?,
  ));
}
/// Create a copy of Transaction
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PaymentDetailsCopyWith<$Res>? get paymentDetails {
    if (_self.paymentDetails == null) {
    return null;
  }

  return $PaymentDetailsCopyWith<$Res>(_self.paymentDetails!, (value) {
    return _then(_self.copyWith(paymentDetails: value));
  });
}/// Create a copy of Transaction
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LocationCopyWith<$Res>? get location {
    if (_self.location == null) {
    return null;
  }

  return $LocationCopyWith<$Res>(_self.location!, (value) {
    return _then(_self.copyWith(location: value));
  });
}
}


/// Adds pattern-matching-related methods to [Transaction].
extension TransactionPatterns on Transaction {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Transaction value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Transaction() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Transaction value)  $default,){
final _that = this;
switch (_that) {
case _Transaction():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Transaction value)?  $default,){
final _that = this;
switch (_that) {
case _Transaction() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( TransactionType type,  TransactionStatus status, @TimestampConverter()  DateTime createdAt, @TimestampConverter()  String bookId,  String fromUserId,  String toUserId,  double? price,  PaymentDetails? paymentDetails,  String? tradeGroupId,  String? tradedForBookId,  Location? location)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Transaction() when $default != null:
return $default(_that.type,_that.status,_that.createdAt,_that.bookId,_that.fromUserId,_that.toUserId,_that.price,_that.paymentDetails,_that.tradeGroupId,_that.tradedForBookId,_that.location);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( TransactionType type,  TransactionStatus status, @TimestampConverter()  DateTime createdAt, @TimestampConverter()  String bookId,  String fromUserId,  String toUserId,  double? price,  PaymentDetails? paymentDetails,  String? tradeGroupId,  String? tradedForBookId,  Location? location)  $default,) {final _that = this;
switch (_that) {
case _Transaction():
return $default(_that.type,_that.status,_that.createdAt,_that.bookId,_that.fromUserId,_that.toUserId,_that.price,_that.paymentDetails,_that.tradeGroupId,_that.tradedForBookId,_that.location);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( TransactionType type,  TransactionStatus status, @TimestampConverter()  DateTime createdAt, @TimestampConverter()  String bookId,  String fromUserId,  String toUserId,  double? price,  PaymentDetails? paymentDetails,  String? tradeGroupId,  String? tradedForBookId,  Location? location)?  $default,) {final _that = this;
switch (_that) {
case _Transaction() when $default != null:
return $default(_that.type,_that.status,_that.createdAt,_that.bookId,_that.fromUserId,_that.toUserId,_that.price,_that.paymentDetails,_that.tradeGroupId,_that.tradedForBookId,_that.location);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _Transaction implements Transaction {
  const _Transaction({required this.type, required this.status, @TimestampConverter() required this.createdAt, @TimestampConverter() required this.bookId, required this.fromUserId, required this.toUserId, this.price, this.paymentDetails, this.tradeGroupId, this.tradedForBookId, this.location});
  factory _Transaction.fromJson(Map<String, dynamic> json) => _$TransactionFromJson(json);

@override final  TransactionType type;
@override final  TransactionStatus status;
@override@TimestampConverter() final  DateTime createdAt;
@override@TimestampConverter() final  String bookId;
@override final  String fromUserId;
@override final  String toUserId;
@override final  double? price;
@override final  PaymentDetails? paymentDetails;
@override final  String? tradeGroupId;
@override final  String? tradedForBookId;
@override final  Location? location;

/// Create a copy of Transaction
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TransactionCopyWith<_Transaction> get copyWith => __$TransactionCopyWithImpl<_Transaction>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TransactionToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Transaction&&(identical(other.type, type) || other.type == type)&&(identical(other.status, status) || other.status == status)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.bookId, bookId) || other.bookId == bookId)&&(identical(other.fromUserId, fromUserId) || other.fromUserId == fromUserId)&&(identical(other.toUserId, toUserId) || other.toUserId == toUserId)&&(identical(other.price, price) || other.price == price)&&(identical(other.paymentDetails, paymentDetails) || other.paymentDetails == paymentDetails)&&(identical(other.tradeGroupId, tradeGroupId) || other.tradeGroupId == tradeGroupId)&&(identical(other.tradedForBookId, tradedForBookId) || other.tradedForBookId == tradedForBookId)&&(identical(other.location, location) || other.location == location));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,type,status,createdAt,bookId,fromUserId,toUserId,price,paymentDetails,tradeGroupId,tradedForBookId,location);

@override
String toString() {
  return 'Transaction(type: $type, status: $status, createdAt: $createdAt, bookId: $bookId, fromUserId: $fromUserId, toUserId: $toUserId, price: $price, paymentDetails: $paymentDetails, tradeGroupId: $tradeGroupId, tradedForBookId: $tradedForBookId, location: $location)';
}


}

/// @nodoc
abstract mixin class _$TransactionCopyWith<$Res> implements $TransactionCopyWith<$Res> {
  factory _$TransactionCopyWith(_Transaction value, $Res Function(_Transaction) _then) = __$TransactionCopyWithImpl;
@override @useResult
$Res call({
 TransactionType type, TransactionStatus status,@TimestampConverter() DateTime createdAt,@TimestampConverter() String bookId, String fromUserId, String toUserId, double? price, PaymentDetails? paymentDetails, String? tradeGroupId, String? tradedForBookId, Location? location
});


@override $PaymentDetailsCopyWith<$Res>? get paymentDetails;@override $LocationCopyWith<$Res>? get location;

}
/// @nodoc
class __$TransactionCopyWithImpl<$Res>
    implements _$TransactionCopyWith<$Res> {
  __$TransactionCopyWithImpl(this._self, this._then);

  final _Transaction _self;
  final $Res Function(_Transaction) _then;

/// Create a copy of Transaction
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? type = null,Object? status = null,Object? createdAt = null,Object? bookId = null,Object? fromUserId = null,Object? toUserId = null,Object? price = freezed,Object? paymentDetails = freezed,Object? tradeGroupId = freezed,Object? tradedForBookId = freezed,Object? location = freezed,}) {
  return _then(_Transaction(
type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as TransactionType,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as TransactionStatus,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,bookId: null == bookId ? _self.bookId : bookId // ignore: cast_nullable_to_non_nullable
as String,fromUserId: null == fromUserId ? _self.fromUserId : fromUserId // ignore: cast_nullable_to_non_nullable
as String,toUserId: null == toUserId ? _self.toUserId : toUserId // ignore: cast_nullable_to_non_nullable
as String,price: freezed == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as double?,paymentDetails: freezed == paymentDetails ? _self.paymentDetails : paymentDetails // ignore: cast_nullable_to_non_nullable
as PaymentDetails?,tradeGroupId: freezed == tradeGroupId ? _self.tradeGroupId : tradeGroupId // ignore: cast_nullable_to_non_nullable
as String?,tradedForBookId: freezed == tradedForBookId ? _self.tradedForBookId : tradedForBookId // ignore: cast_nullable_to_non_nullable
as String?,location: freezed == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as Location?,
  ));
}

/// Create a copy of Transaction
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PaymentDetailsCopyWith<$Res>? get paymentDetails {
    if (_self.paymentDetails == null) {
    return null;
  }

  return $PaymentDetailsCopyWith<$Res>(_self.paymentDetails!, (value) {
    return _then(_self.copyWith(paymentDetails: value));
  });
}/// Create a copy of Transaction
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LocationCopyWith<$Res>? get location {
    if (_self.location == null) {
    return null;
  }

  return $LocationCopyWith<$Res>(_self.location!, (value) {
    return _then(_self.copyWith(location: value));
  });
}
}

// dart format on
