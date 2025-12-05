// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PaymentDetails _$PaymentDetailsFromJson(Map<String, dynamic> json) =>
    _PaymentDetails(
      method: $enumDecode(_$PaymentMethodEnumMap, json['method']),
      transactionId: json['transactionId'] as String?,
      status: $enumDecodeNullable(_$PaymentStatusEnumMap, json['status']),
    );

Map<String, dynamic> _$PaymentDetailsToJson(_PaymentDetails instance) =>
    <String, dynamic>{
      'method': _$PaymentMethodEnumMap[instance.method]!,
      'transactionId': instance.transactionId,
      'status': _$PaymentStatusEnumMap[instance.status],
    };

const _$PaymentMethodEnumMap = {
  PaymentMethod.paypal: 'paypal',
  PaymentMethod.stripe: 'stripe',
  PaymentMethod.none: 'none',
};

const _$PaymentStatusEnumMap = {
  PaymentStatus.unpaid: 'unpaid',
  PaymentStatus.paid: 'paid',
  PaymentStatus.refunded: 'refunded',
};

_Transaction _$TransactionFromJson(Map<String, dynamic> json) => _Transaction(
  type: $enumDecode(_$TransactionTypeEnumMap, json['type']),
  status: $enumDecode(_$TransactionStatusEnumMap, json['status']),
  createdAt: const TimestampConverter().fromJson(
    json['createdAt'] as Timestamp,
  ),
  bookId: json['bookId'] as String,
  fromUserId: json['fromUserId'] as String,
  toUserId: json['toUserId'] as String,
  price: (json['price'] as num?)?.toDouble(),
  paymentDetails: json['paymentDetails'] == null
      ? null
      : PaymentDetails.fromJson(json['paymentDetails'] as Map<String, dynamic>),
  tradeGroupId: json['tradeGroupId'] as String?,
  tradedForBookId: json['tradedForBookId'] as String?,
  location: json['location'] == null
      ? null
      : Location.fromJson(json['location'] as Map<String, dynamic>),
);

Map<String, dynamic> _$TransactionToJson(_Transaction instance) =>
    <String, dynamic>{
      'type': _$TransactionTypeEnumMap[instance.type]!,
      'status': _$TransactionStatusEnumMap[instance.status]!,
      'createdAt': const TimestampConverter().toJson(instance.createdAt),
      'bookId': instance.bookId,
      'fromUserId': instance.fromUserId,
      'toUserId': instance.toUserId,
      'price': instance.price,
      'paymentDetails': instance.paymentDetails?.toJson(),
      'tradeGroupId': instance.tradeGroupId,
      'tradedForBookId': instance.tradedForBookId,
      'location': instance.location?.toJson(),
    };

const _$TransactionTypeEnumMap = {
  TransactionType.sale: 'sale',
  TransactionType.trade: 'trade',
};

const _$TransactionStatusEnumMap = {
  TransactionStatus.pending: 'pending',
  TransactionStatus.completed: 'completed',
  TransactionStatus.canceled: 'canceled',
};
