import 'package:dartz/dartz.dart';
import 'package:ika_smansara/auth/auth.dart';
import 'package:ika_smansara/common/common.dart';
import 'package:ika_smansara/detail_campaign/domain/use_case/get_detail_campaign_use_case/get_detail_campaign_use_case.dart';
import 'package:ika_smansara/payment_gateway/payment_gateway.dart';
import 'package:injectable/injectable.dart';

@injectable
class RequestAcquiringTransactionTokenUseCase {
  RequestAcquiringTransactionTokenUseCase(this._paymentGatewayRepository);

  final PaymentGatewayRepository _paymentGatewayRepository;

  Future<Either<ErrorResponse, MidtransTransactionResponse>> call(
    String? grossAmount,
    String? orderId,
    String? campaignId,
  ) async {
    // get user account data
    final getUserAccountDetailUseCase = getIt<GetUserAccountDetailUseCase>();
    var userName = '';
    var userPhone = '';
    var userEmail = '';
    await getUserAccountDetailUseCase().then(
      (value) {
        value.fold(
          (error) {
            userName = 'no name';
            userPhone = 'no phone';
            userEmail = 'no email';
          },
          (success) {
            userName = success.name ?? 'no name';
            userPhone = success.phone ?? 'no phone';
            userEmail = success.email ?? 'no email';
          },
        );
      },
    );

    // get name campaign from detail campaign
    final getDetailCampaignUseCase = getIt<GetDetailCampaignUseCase>();
    var campaignName = '';
    await getDetailCampaignUseCase(campaignId).then(
      (value) {
        value.fold(
          (error) {
            campaignName = 'no name';
          },
          (success) {
            campaignName = success.campaignName?.substring(0, 25) ?? 'no name';
          },
        );
      },
    );

    // initialize data for transaction midtrans
    final midtransTransactionDetailsRequest = MidtransTransactionDetailsRequest(
      grossAmount: int.parse(grossAmount ?? '0'),
      orderId: orderId,
    );
    final midtransItemRequest = MidtransItemRequest(
      id: campaignId,
      price: int.parse(grossAmount ?? '0'),
      quantity: 1,
      name: campaignName,
    );
    final midtransCustomerDetailsRequest = MidtransCustomerDetailsRequest(
      email: userEmail,
      phone: userPhone,
      firstName: userName,
    );
    const midtransCreditCardRequest = MidtransCreditCardRequest();
    final midtransTransactionRequest = MidtransTransactionRequest(
      midtransCreditCardRequest: midtransCreditCardRequest,
      midtransTransactionDetailsRequest: midtransTransactionDetailsRequest,
      midtransItemDetailsRequest: [midtransItemRequest],
      midtransCustomerDetailsRequest: midtransCustomerDetailsRequest,
    );

    return _paymentGatewayRepository
        .getAcquiringTransactionToken(midtransTransactionRequest);
  }
}
