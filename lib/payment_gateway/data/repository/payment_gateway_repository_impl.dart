import 'package:dartz/dartz.dart';
import 'package:ika_smansara/common/common.dart';
import 'package:ika_smansara/common/data/mapper/document_mapper.dart';
import 'package:ika_smansara/payment_gateway/payment_gateway.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: PaymentGatewayRepository)
class PaymentGatewayRepositoryImpl implements PaymentGatewayRepository {
  PaymentGatewayRepositoryImpl(
    this._apiServicesPaymentGateway,
    this._apiServices,
  );

  final ApiServicesPaymentGateway _apiServicesPaymentGateway;
  final ApiServices _apiServices;

  @override
  Future<Either<ErrorResponse, MidtransTransactionResponse>>
      getAcquiringTransactionToken(
    MidtransTransactionRequest midtransTransactionRequest,
  ) async {
    final responseMidtransTransaction =
        await _apiServicesPaymentGateway.acquiringTransactionToken(
      midtransTransactionRequest.toMidtransTransactionRequestDTO(),
    );

    try {
      return Right(
        MidtransTransactionResponseDTO.fromJson(
          responseMidtransTransaction.body as Map<String, dynamic>,
        ).toMidtransTransactionResponse(),
      );
    } catch (e) {
      return Left(
        ErrorResponseDTO.fromJson(
          responseMidtransTransaction.error! as Map<String, dynamic>,
        ).toErrorResponse(),
      );
    }
  }

  @override
  Future<Either<ErrorResponse, DetailCampaignDocumentResponse>>
      updateCampaignDocument(
    String documentId,
    CampaignDocumentUpdateContentRequest campaignDocumentUpdateContentRequest,
  ) async {
    final responseUpdateCampaignDocument =
        await _apiServices.updateCampaignDetail(
      documentId,
      campaignDocumentUpdateContentRequest
          .toCampaignDocumentUpdateContentRequestDTO(),
    );

    try {
      return Right(
        CampaignDocumentResponseDTO.fromJson(
          responseUpdateCampaignDocument.body as Map<String, dynamic>,
        ).toDetailCampaignDocumentResponse(),
      );
    } catch (e) {
      return Left(
        ErrorResponseDTO.fromJson(
          responseUpdateCampaignDocument.error! as Map<String, dynamic>,
        ).toErrorResponse(),
      );
    }
  }

  @override
  Future<Either<ErrorResponse, DocumentResponse>> saveTransactionDocument(
    TransactionDocumentRequest transactionDocumentRequest,
  ) async {
    final responseSaveTransactionDocument =
        await _apiServices.saveTransactionDetail(
      transactionDocumentRequest.toTransactionDocumentRequestDTO(),
    );

    try {
      return Right(
        DocumentResponseDTO.fromJson(
          responseSaveTransactionDocument.body as Map<String, dynamic>,
        ).toDocumentResponse(),
      );
    } catch (e) {
      return Left(
        ErrorResponseDTO.fromJson(
          responseSaveTransactionDocument.error! as Map<String, dynamic>,
        ).toErrorResponse(),
      );
    }
  }
}
