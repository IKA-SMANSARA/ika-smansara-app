import 'package:freezed_annotation/freezed_annotation.dart';

part 'detail_my_donation_document_response.freezed.dart';
part 'detail_my_donation_document_response.g.dart';

@freezed
class DetailMyDonationDocumentResponse with _$DetailMyDonationDocumentResponse {
  factory DetailMyDonationDocumentResponse({
    String? orderId,
    String? campaignId,
    String? campaignName,
    String? campaignImage,
    int? amount,
    String? paymentStatus,
    String? userId,
    String? createdAt,
  }) = _DetailMyDonationDocumentResponse;

  factory DetailMyDonationDocumentResponse.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$DetailMyDonationDocumentResponseFromJson(json);
}
