import 'package:flutter/foundation.dart';
import 'package:ika_smansara/domain/entities/result.dart';
import 'package:ika_smansara/domain/entities/transaction_document.dart';
import 'package:ika_smansara/domain/entities/transaction_request.dart';
import 'package:ika_smansara/domain/usecases/save_payment/save_payment.dart';
import 'package:ika_smansara/domain/usecases/save_payment/save_payment_params.dart';
import 'package:ika_smansara/presentation/providers/router/router_provider.dart';
import 'package:ika_smansara/presentation/providers/usecase/save_payment_use_case_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'save_payment_transaction_provider.g.dart';

@riverpod
class SavePaymentTransaction extends _$SavePaymentTransaction {
  @override
  Future<TransactionDocument?> build() async => null;

  Future<void> postPaymentTransaction({
    required TransactionRequest transactionRequest,
    required String statusPayment,
  }) async {
    state = const AsyncLoading();

    SavePayment savePayment = ref.read(savePaymentUseCaseProvider);

    var result = await savePayment(
      SavePaymentParams(
        transactionRequest: transactionRequest,
        statusPayment: statusPayment,
      ),
    );

    switch (result) {
      case Success(value: final transaction):
        ref.read(routerProvider).pushReplacementNamed(
              'detail-transaction',
              extra: transaction.id,
            );
        state = AsyncData(transaction);
      case Failed(:final message):
        state = AsyncError(
          FlutterError(message),
          StackTrace.current,
        );
        state = const AsyncData(null);
    }
  }
}
