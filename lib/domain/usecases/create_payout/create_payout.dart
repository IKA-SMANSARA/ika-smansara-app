import 'package:ika_smansara/data/repositories/payout_gateway_repository.dart';
import 'package:ika_smansara/data/repositories/payout_repository.dart';
import 'package:ika_smansara/domain/entities/payout_document.dart';
import 'package:ika_smansara/domain/entities/payout_request.dart';
import 'package:ika_smansara/domain/entities/result.dart';
import 'package:ika_smansara/domain/usecases/create_payout/create_payout_params.dart';
import 'package:ika_smansara/domain/usecases/usecase.dart';
import 'package:ika_smansara/utils/constants.dart';

class CreatePayout
    implements UseCase<Result<PayoutDocument>, CreatePayoutParams> {
  final PayoutGatewayRepository _payoutGatewayRepository;
  final PayoutRepository _payoutRepository;

  CreatePayout({
    required PayoutGatewayRepository payoutGatewayRepository,
    required PayoutRepository payoutRepository,
  })  : _payoutGatewayRepository = payoutGatewayRepository,
        _payoutRepository = payoutRepository;

  @override
  Future<Result<PayoutDocument>> call(CreatePayoutParams params) async {
    var payouts = PayoutRequest(
      payouts: [
        params.payoutItemRequest,
      ],
    );

    var result = await _payoutGatewayRepository.createPayout(
      payoutRequest: payouts,
    );

    Constants.logger.d(result.resultValue);

    if (result is Success) {
      var resultPayoutAppwrite = await _payoutRepository.createPayout(
        payoutItemRequest: params.payoutItemRequest.copyWith(
          payoutReferenceNo: result.resultValue?.payouts?[0].referenceNo,
          payoutStatus: result.resultValue?.payouts?[0].status,
        ),
      );

      Constants.logger.d(resultPayoutAppwrite.resultValue);

      if (resultPayoutAppwrite is Success) {
        return switch (resultPayoutAppwrite) {
          Success(value: final data) => Result.success(data),
          Failed(:final message) => Result.failed(message),
        };
      } else {
        Constants.logger.e(result.errorMessage);
        return Result.failed(result.errorMessage ?? 'Error!');
      }
    } else {
      Constants.logger.e(result.errorMessage);
      return Result.failed(result.errorMessage ?? 'Error!');
    }
  }
}
