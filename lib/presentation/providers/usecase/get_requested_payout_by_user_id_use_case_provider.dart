import 'package:ika_smansara/domain/usecases/get_requested_payout_by_user_id/get_requested_payout_by_user_id.dart';
import 'package:ika_smansara/presentation/providers/repositories/payout_repository/payout_repository_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'get_requested_payout_by_user_id_use_case_provider.g.dart';

@riverpod
GetRequestedPayoutByUserId getRequestedPayoutByUserIdUseCase(
    GetRequestedPayoutByUserIdUseCaseRef ref) => GetRequestedPayoutByUserId(
    payoutRepository: ref.watch(
      payoutRepositoryProvider,
    ),
  );
