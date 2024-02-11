import 'package:ika_smansara/domain/usecases/save_payment/save_payment.dart';
import 'package:ika_smansara/presentation/providers/repositories/campaign_repository/campaign_repository_provider.dart';
import 'package:ika_smansara/presentation/providers/repositories/transaction_repository.dart/transaction_repository_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'save_payment_use_case_provider.g.dart';

@riverpod
SavePayment savePaymentUseCase(SavePaymentUseCaseRef ref) => SavePayment(
      transactionRepository: ref.watch(
        transactionRepositoryProvider,
      ),
      campaignRepository: ref.watch(
        campaignRepositoryProvider,
      ),
    );
