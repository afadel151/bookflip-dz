
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:cloud_firestore/cloud_firestore.dart'; 
import 'package:bookflip_mobile/utils/timestamp_converter.dart'; 
import 'package:bookflip_mobile/features/profile/domain/user.model.dart';

part 'transaction.model.freezed.dart';
part 'transaction.model.g.dart';


enum TransactionType {
  @JsonValue('sale')
  sale,
  @JsonValue('trade')
  trade,
}

enum TransactionStatus {
  @JsonValue('pending')
  pending,
  @JsonValue('completed')
  completed,
  @JsonValue('canceled')
  canceled,
}

enum PaymentMethod {
  @JsonValue('paypal')
  paypal,
  @JsonValue('stripe')
  stripe,
  none,
}

enum PaymentStatus {
  @JsonValue('unpaid')
  unpaid,
  @JsonValue('paid')
  paid,
  @JsonValue('refunded')
  refunded,
}

@freezed
abstract class PaymentDetails with _$PaymentDetails {
  const factory PaymentDetails({
    required PaymentMethod method, 
    
    String? transactionId, 
    
    PaymentStatus? status, 
  }) = _PaymentDetails;

  factory PaymentDetails.fromJson(Map<String, dynamic> json) => _$PaymentDetailsFromJson(json);
}


@freezed
abstract class Transaction with _$Transaction {
  @JsonSerializable(explicitToJson: true)
  const factory Transaction({
    required TransactionType type, 
    required TransactionStatus status, 

    @TimestampConverter()
    required DateTime createdAt,
    @TimestampConverter()

    required String bookId,
    required String fromUserId, 
    required String toUserId,   

    double? price, 
    PaymentDetails? paymentDetails,

    String? tradeGroupId, 
    String? tradedForBookId, 
      
    Location? location, 
  }) = _Transaction;

  factory Transaction.fromJson(Map<String, dynamic> json) => _$TransactionFromJson(json);
}