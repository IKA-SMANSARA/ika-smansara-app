import 'package:ika_smansara/data/payout_gateway/payout_gateway_repository_impl.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'payout_gateway_repository_provider.g.dart';

@riverpod
PayoutGatewayRepositoryImpl payoutGatewayRepository(
        PayoutGatewayRepositoryRef ref) =>
    PayoutGatewayRepositoryImpl();
