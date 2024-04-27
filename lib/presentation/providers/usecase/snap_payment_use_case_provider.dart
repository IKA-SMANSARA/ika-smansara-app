import 'package:hive/hive.dart';
import 'package:ika_smansara/domain/usecases/snap_payment/snap_payment.dart';
import 'package:ika_smansara/presentation/providers/repositories/payment_gateway_repository/payment_gateway_repository_admin_provider.dart';
import 'package:ika_smansara/presentation/providers/repositories/payment_gateway_repository/payment_gateway_repository_provider.dart';
import 'package:ika_smansara/utils/constants.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'snap_payment_use_case_provider.g.dart';

@riverpod
SnapPayment snapPaymentUseCase(SnapPaymentUseCaseRef ref) {
  Constants.logger
      .d('DEVELOPER MODE STATUS ${Hive.box('dev mode').get("isDevMode")}');

  if (Hive.box('dev mode').get("isDevMode")) {
    return SnapPayment(
      paymentGatewayRepository: ref.watch(
        paymentGatewayAdminRepositoryProvider,
      ),
    );
  } else {
    return SnapPayment(
      paymentGatewayRepository: ref.watch(
        paymentGatewayRepositoryProvider,
      ),
    );
  }
}
