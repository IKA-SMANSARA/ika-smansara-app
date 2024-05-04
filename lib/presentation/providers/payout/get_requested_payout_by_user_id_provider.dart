import 'package:ika_smansara/domain/entities/payout_document.dart';
import 'package:ika_smansara/domain/entities/result.dart';
import 'package:ika_smansara/domain/usecases/get_requested_payout_by_user_id/get_requested_payout_by_user_id.dart';
import 'package:ika_smansara/domain/usecases/get_requested_payout_by_user_id/get_requested_payout_by_user_id_params.dart';
import 'package:ika_smansara/presentation/providers/usecase/get_requested_payout_by_user_id_use_case_provider.dart';
import 'package:ika_smansara/utils/constants.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'get_requested_payout_by_user_id_provider.g.dart';

@riverpod
Future<List<PayoutDocument>> getRequestedPayoutByUserId(
  GetRequestedPayoutByUserIdRef ref, {
  required String userId,
}) async {
  GetRequestedPayoutByUserId getRequestedPayoutByUserIdData = ref.read(
    getRequestedPayoutByUserIdUseCaseProvider,
  );

  var result = await getRequestedPayoutByUserIdData(
    GetRequestedPayoutByUserIdParams(
      userId: userId,
    ),
  );

  Constants.logger.d(result.resultValue);

  return switch (result) {
    Success(value: final requestedPayout) => requestedPayout,
    Failed(message: _) => const [],
  };
}
