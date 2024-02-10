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
    @Default(0) int? backerCount,
    @Default(0) int? currentAmount,
    String? id,
    String? collectionId,
    String? databaseId,
    String? createdAt,
    String? updatedAt,
    @Default([]) List<dynamic>? permissions,
    @Default(0) int? goalAmount,
    String? dateStartCampaign,
    String? dateEndCampaign,
    @Default(false) bool? isDeleted,
    @Default(false) bool? isActive,
    String? photoThumbnail,
    @Default([]) List<dynamic>? categories,
    String? campaignDescription,
  }) = _TransactionRequest;

  factory TransactionRequest.fromJson(Map<String, dynamic> json) =>
      _$TransactionRequestFromJson(json);
}
