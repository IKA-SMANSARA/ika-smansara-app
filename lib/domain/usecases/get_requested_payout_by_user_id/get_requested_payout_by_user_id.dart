import 'package:ika_smansara/data/repositories/payout_repository.dart';
import 'package:ika_smansara/domain/entities/payout_document.dart';
import 'package:ika_smansara/domain/entities/result.dart';
import 'package:ika_smansara/domain/usecases/get_requested_payout_by_user_id/get_requested_payout_by_user_id_params.dart';
import 'package:ika_smansara/domain/usecases/usecase.dart';
import 'package:ika_smansara/utils/constants.dart';

class GetRequestedPayoutByUserId
    implements
        UseCase<Result<List<PayoutDocument>>,
            GetRequestedPayoutByUserIdParams> {
  final PayoutRepository _payoutRepository;

  GetRequestedPayoutByUserId({required PayoutRepository payoutRepository})
      : _payoutRepository = payoutRepository;

  @override
  Future<Result<List<PayoutDocument>>> call(
      GetRequestedPayoutByUserIdParams params) async {
    var result = await _payoutRepository.getListPayoutByUserId(
      userId: params.userId,
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
