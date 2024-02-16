import 'package:ika_smansara/domain/usecases/snap_payment/snap_payment.dart';
import 'package:ika_smansara/presentation/providers/repositories/payment_gateway_repository/payment_gateway_repository_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'snap_payment_use_case_provider.g.dart';

@riverpod
SnapPayment snapPaymentUseCase(SnapPaymentUseCaseRef ref) => SnapPayment(
      paymentGatewayRepository: ref.watch(
        paymentGatewayRepositoryProvider,
      ),
    );
