import 'package:ika_smansara/data/payment_gateway/payment_gateway_repository_impl.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'payment_gateway_repository_provider.g.dart';

@riverpod
PaymentGatewayRepositoryImpl paymentGatewayRepository(
        PaymentGatewayRepositoryRef ref) =>
    PaymentGatewayRepositoryImpl();
