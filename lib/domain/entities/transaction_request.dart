import 'package:freezed_annotation/freezed_annotation.dart';

part 'transaction_request.freezed.dart';
part 'transaction_request.g.dart';

@freezed
class TransactionRequest with _$TransactionRequest {
  factory TransactionRequest({
    String? transactionId,
    String? campaignId,
    @Default(0) int? amount,
    String? paymentStatus,
    String? userId,
    String? campaignName,
    String? campaignImage,
    String? userName,
    String? userPhone,
    String? userAddress,
    String? userEmail,
    @Default(0) int? paymentFee,
  }) = _TransactionRequest;

  factory TransactionRequest.fromJson(Map<String, dynamic> json) =>
      TransactionRequest(
        amount: json['amount'],
        campaignId: json['campaignId'],
        campaignImage: json['campaignImage'],
        campaignName: json['campaignName'],
        paymentStatus: json['paymentStatus'],
        userId: json['userId'],
        userName: json['userName'],
        paymentFee: json['paymentFee'],
      );
}
