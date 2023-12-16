import 'package:ika_smansara/common/common.dart';
import 'package:ika_smansara/list_my_donation/list_my_donation.dart';

extension TransactionDocumentResponseDTOExtension
    on TransactionDocumentResponseDTO {
  TransactionDocumentResponse toTransactionDocumentResponse() =>
      TransactionDocumentResponse(
        amount: amount,
        campaignId: campaignId,
        campaignImage: campaignImage,
        campaignName: campaignName,
        orderId: orderId,
        paymentStatus: paymentStatus,
        userId: userId,
        createdAt: createdAt,
      );
}

extension TransactionsCollectionsResponseDTOExtension
    on TransactionsCollectionsResponseDTO {
  TransactionsCollectionsResponse toTransactionsCollectionsResponse() =>
      TransactionsCollectionsResponse(
        documents: documents
            ?.map((data) => data.toTransactionDocumentResponse())
            .toList(),
      );
}
