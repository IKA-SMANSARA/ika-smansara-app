import 'package:ika_smansara/data/payout_gateway/payout_gateway_repository_impl.dart';
import 'package:ika_smansara/data/repositories/payout_gateway_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'payout_gateway_repository_provider.g.dart';

@riverpod
PayoutGatewayRepository payoutGatewayRepository(
        PayoutGatewayRepositoryRef ref) =>
    PayoutGatewayRepositoryImpl();
