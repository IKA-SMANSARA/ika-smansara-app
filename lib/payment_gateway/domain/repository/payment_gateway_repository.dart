import 'package:dartz/dartz.dart';
import 'package:ika_smansara/common/common.dart';
import 'package:ika_smansara/payment_gateway/payment_gateway.dart';

abstract class PaymentGatewayRepository {
  Future<Either<ErrorResponse, MidtransTransactionResponse>>
      getAcquiringTransactionToken(
    MidtransTransactionRequest midtransTransactionRequest,
  );

  Future<Either<ErrorResponse, DetailCampaignDocumentResponse>>
      updateCampaignDocument(
    String documentId,
    CampaignDocumentUpdateContentRequest campaignDocumentUpdateContentRequest,
  );

  Future<Either<ErrorResponse, DocumentResponse>> saveTransactionDocument(
    TransactionDocumentRequest transactionDocumentRequest,
  );
}
