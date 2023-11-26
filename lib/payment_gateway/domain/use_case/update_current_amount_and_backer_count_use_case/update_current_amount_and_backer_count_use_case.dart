// ignore_for_file: lines_longer_than_80_chars

import 'package:dartz/dartz.dart';
import 'package:ika_smansara/common/common.dart';
import 'package:ika_smansara/detail_campaign/domain/use_case/get_detail_campaign_use_case/get_detail_campaign_use_case.dart';
import 'package:ika_smansara/payment_gateway/payment_gateway.dart';
import 'package:injectable/injectable.dart';

@injectable
class UpdateCurrentAmountAndBackerCountUseCase {
  UpdateCurrentAmountAndBackerCountUseCase(this._paymentGatewayRepository);

  final PaymentGatewayRepository _paymentGatewayRepository;

  Future<Either<ErrorResponse, DetailCampaignDocumentResponse>> call(
    String? grossAmount,
    String? campaignId,
  ) async {
    // get name campaign from detail campaign
    final getDetailCampaignUseCase = getIt<GetDetailCampaignUseCase>();
    var amount = 0;
    var backerCount = 0;

    await getDetailCampaignUseCase(campaignId).then(
      (value) {
        value.fold(
          (error) {
            return ErrorResponse(message: error.message);
          },
          (success) {
            amount = (success.currentAmount ?? 0) + int.parse(grossAmount ?? '0');
            backerCount = (success.backerCount ?? 0) + 1;
          },
        );
      },
    );

    final campaignDocumentDataContentRequest =
        CampaignDocumentDataContentRequest(
      backerCount: backerCount,
      currentAmount: amount,
    );

    final campaignDocumentUpdateContentRequest =
        CampaignDocumentUpdateContentRequest(
      data: campaignDocumentDataContentRequest,
    );

    return _paymentGatewayRepository.updateCampaignDocument(
      campaignId ?? '',
      campaignDocumentUpdateContentRequest,
    );
  }
}
