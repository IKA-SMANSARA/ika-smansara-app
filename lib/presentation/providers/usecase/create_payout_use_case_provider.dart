import 'package:ika_smansara/domain/usecases/create_payout/create_payout.dart';
import 'package:ika_smansara/presentation/providers/repositories/payout_gateway_repository/payout_gateway_repository_provider.dart';
import 'package:ika_smansara/presentation/providers/repositories/payout_repository/payout_repository_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'create_payout_use_case_provider.g.dart';

@riverpod
CreatePayout createPayoutUseCase(CreatePayoutUseCaseRef ref) => CreatePayout(
      payoutGatewayRepository: ref.watch(payoutGatewayRepositoryProvider),
      payoutRepository: ref.watch(payoutRepositoryProvider),
    );
