import 'package:ika_smansara/common/common.dart';
import 'package:ika_smansara/detail_my_donation/detail_my_donation.dart';

extension TransactionDocumentResponseDTOExtension
    on TransactionDocumentResponseDTO {
  DetailMyDonationDocumentResponse toDetailMyDonationDocumentResponse() =>
      DetailMyDonationDocumentResponse(
        amount: amount,
        campaignId: campaignId,
        campaignImage: campaignImage,
        campaignName: campaignName,
        createdAt: createdAt,
        orderId: orderId,
        paymentStatus: paymentStatus,
        userId: userId,
      );
}
