import 'package:ika_smansara/data/repositories/payout_gateway_repository.dart';
import 'package:ika_smansara/domain/entities/payout_request.dart';
import 'package:ika_smansara/domain/entities/payout_response.dart';
import 'package:ika_smansara/domain/entities/result.dart';
import 'package:ika_smansara/domain/usecases/create_payout/create_payout_params.dart';
import 'package:ika_smansara/domain/usecases/usecase.dart';
import 'package:ika_smansara/utils/constants.dart';

class CreatePayout
    implements UseCase<Result<PayoutResponse>, CreatePayoutParams> {
  final PayoutGatewayRepository _payoutGatewayRepository;

  CreatePayout({
    required PayoutGatewayRepository payoutGatewayRepository,
  }) : _payoutGatewayRepository = payoutGatewayRepository;

  @override
  Future<Result<PayoutResponse>> call(CreatePayoutParams params) async {
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
      return switch (result) {
        Success(value: final data) => Result.success(data),
        Failed(:final message) => Result.failed(message),
      };
    } else {
      Constants.logger.e(result.errorMessage);
      return Result.failed(result.errorMessage ?? 'Error!');
    }
  }
}
