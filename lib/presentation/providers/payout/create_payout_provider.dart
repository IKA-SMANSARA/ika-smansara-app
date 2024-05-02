import 'package:flutter/foundation.dart';
import 'package:ika_smansara/domain/entities/payout_document.dart';
import 'package:ika_smansara/domain/entities/payout_item_request.dart';
import 'package:ika_smansara/domain/entities/result.dart';
import 'package:ika_smansara/domain/usecases/create_payout/create_payout.dart';
import 'package:ika_smansara/domain/usecases/create_payout/create_payout_params.dart';
import 'package:ika_smansara/presentation/providers/router/router_provider.dart';
import 'package:ika_smansara/presentation/providers/usecase/create_payout_use_case_provider.dart';
import 'package:ika_smansara/utils/constants.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'create_payout_provider.g.dart';

@riverpod
class CreateUserPayout extends _$CreateUserPayout {
  @override
  Future<PayoutDocument?> build() async => null;

  Future<void> postRequestPayout({
    required PayoutItemRequest payoutItemRequest,
  }) async {
    state = AsyncValue.loading();

    CreatePayout createPayout = ref.read(
      createPayoutUseCaseProvider,
    );

    var result = await createPayout(
      CreatePayoutParams(
        payoutItemRequest: payoutItemRequest,
      ),
    );

    Constants.logger.d(result.resultValue);

    switch (result) {
      case Success(value: final data):
        state = AsyncData(data);
        // var userId = ref.read(userDataProvider).valueOrNull?.authKey;
        // ref.refresh(
        //   getAccountBankByUserIdProvider(
        //     userId: userId ?? '',
        //   ),
        // );
        ref.read(routerProvider).pop();
      case Failed(:final message):
        state = AsyncError(
          FlutterError(message),
          StackTrace.current,
        );
        state = const AsyncData(null);
    }
  }
}
