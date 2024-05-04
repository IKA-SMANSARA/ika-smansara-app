import 'package:ika_smansara/data/payment_gateway/payment_gateway_repository_admin_impl.dart';
import 'package:ika_smansara/data/repositories/payment_gateway_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'payment_gateway_repository_admin_provider.g.dart';

@riverpod
PaymentGatewayRepository paymentGatewayAdminRepository(
        PaymentGatewayAdminRepositoryRef ref) =>
    PaymentGatewayRepositoryAdminImpl();
