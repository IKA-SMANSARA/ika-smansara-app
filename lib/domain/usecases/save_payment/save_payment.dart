import 'package:ika_smansara/data/repositories/campaign_repository.dart';
import 'package:ika_smansara/data/repositories/transaction_repository.dart';
import 'package:ika_smansara/domain/entities/campaign_request.dart';
import 'package:ika_smansara/domain/entities/result.dart';
import 'package:ika_smansara/domain/entities/transaction_document.dart';
import 'package:ika_smansara/domain/entities/transaction_document_request.dart';
import 'package:ika_smansara/domain/usecases/save_payment/save_payment_params.dart';
import 'package:ika_smansara/domain/usecases/usecase.dart';
import 'package:ika_smansara/utils/constants.dart';

class SavePayment
    implements UseCase<Result<TransactionDocument>, SavePaymentParams> {
  final TransactionRepository _transactionRepository;
  final CampaignRepository _campaignRepository;

  SavePayment({
    required TransactionRepository transactionRepository,
    required CampaignRepository campaignRepository,
  })  : _transactionRepository = transactionRepository,
        _campaignRepository = campaignRepository;

  @override
  Future<Result<TransactionDocument>> call(SavePaymentParams params) async {
    final CampaignRequest _campaignRequest = CampaignRequest(
      backerCount: (params.transactionRequest.backerCount ?? 0) + 1,
      currentAmount: (params.transactionRequest.currentAmount ?? 0) +
          ((params.transactionRequest.amount ?? 0) -
              (params.transactionRequest.paymentFee ?? 0)),
      campaignDescription: params.transactionRequest.campaignDescription,
      id: params.transactionRequest.campaignId,
      campaignName: params.transactionRequest.campaignName,
      categories: params.transactionRequest.categories,
      dateEndCampaign: params.transactionRequest.dateEndCampaign,
      dateStartCampaign: params.transactionRequest.dateStartCampaign,
      goalAmount: params.transactionRequest.goalAmount,
      isActive: params.transactionRequest.isActive,
      isDeleted: params.transactionRequest.isDeleted,
      photoThumbnail: params.transactionRequest.photoThumbnail,
      createdBy: params.transactionRequest.campaignCreatedBy,
    );
    final TransactionDocumentRequest _transactionDocumentRequest =
        TransactionDocumentRequest(
      amount: ((params.transactionRequest.amount ?? 0) -
          (params.transactionRequest.paymentFee ?? 0)),
      campaignId: params.transactionRequest.campaignId,
      campaignImage: params.transactionRequest.campaignImage,
      campaignName: params.transactionRequest.campaignName,
      paymentFee: params.transactionRequest.paymentFee,
      paymentStatus: params.statusPayment,
      userId: params.transactionRequest.userId,
      userName: params.transactionRequest.userName,
      note: params.transactionRequest.note,
    );

    var resultSaveTransaction = await _transactionRepository.createTransaction(
      transactionRequest: params.transactionRequest,
      transactionDocumentRequest: _transactionDocumentRequest,
    );

    Constants.logger.d(resultSaveTransaction.resultValue);

    if (resultSaveTransaction is Success) {
      if (params.statusPayment == 'settlement' ||
          params.statusPayment == 'capture') {
        var resultUpdateCampaign = await _campaignRepository.updateCampaign(
          campaignRequest: _campaignRequest,
        );

        Constants.logger.d(resultUpdateCampaign.resultValue);

        if (resultUpdateCampaign is Success) {
          return switch (resultSaveTransaction) {
            Success(value: final data) => Result.success(data),
            Failed(:final message) => Result.failed(message),
          };
        } else {
          Constants.logger.e(resultSaveTransaction.errorMessage);
          return Result.failed(resultSaveTransaction.errorMessage ?? 'Error!');
        }
      } else {
        return switch (resultSaveTransaction) {
          Success(value: final data) => Result.success(data),
          Failed(:final message) => Result.failed(message),
        };
      }
    } else {
      Constants.logger.e(resultSaveTransaction.errorMessage);
      return Result.failed(resultSaveTransaction.errorMessage ?? 'Error!');
    }
  }
}
