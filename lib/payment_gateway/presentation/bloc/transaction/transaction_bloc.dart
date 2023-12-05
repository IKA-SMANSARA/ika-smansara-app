import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ika_smansara/auth/auth.dart';
import 'package:ika_smansara/common/common.dart';
import 'package:ika_smansara/payment_gateway/payment_gateway.dart';

part 'transaction_bloc.freezed.dart';
part 'transaction_event.dart';
part 'transaction_state.dart';

class TransactionBloc extends Bloc<TransactionEvent, TransactionState> {
  TransactionBloc() : super(const TransactionState.initial()) {
    on<TransactionEvent>(
      (event, emit) async {
        await event.when(
          started: () {
            // init loading
            emit(const TransactionState.loading());
          },
          saveTransactionData: (
            grossAmount,
            orderId,
            campaignId,
            statusPayment,
            campaignName,
            campaignImage,
          ) async {
            await _getUserAccountDetailUseCase().then(
              (value) {
                value.fold(
                  (error) => emit(
                    TransactionState.error(
                      error.message,
                    ),
                  ),
                  (response) {
                    _saveTransactionUseCase(
                      grossAmount,
                      orderId,
                      campaignId,
                      statusPayment,
                      response.id,
                      campaignName,
                      campaignImage,
                    ).then(
                      (value) {
                        value.fold(
                          (error) => emit(
                            TransactionState.error(
                              error.message,
                            ),
                          ),
                          (response) {
                            _updateCurrentAmountAndBackerCountUseCase(
                              grossAmount,
                              campaignId,
                            ).then(
                              (value) {
                                value.fold(
                                  (error) => emit(
                                    TransactionState.error(
                                      error.message,
                                    ),
                                  ),
                                  (response) => null,
                                );
                              },
                            );
                          },
                        );
                      },
                    );
                  },
                );
              },
            );
          },
          fetchData: (
            grossAmount,
            orderId,
            campaignId,
          ) async {
            // fetching data
            await _requestAcquiringTransactionTokenUseCase(
              grossAmount,
              orderId,
              campaignId,
            ).then(
              (response) {
                response.fold(
                  (error) => emit(TransactionState.error(error.message)),
                  (response) => emit(
                    TransactionState.success(response.redirectUrl),
                  ),
                );
              },
            );
          },
        );
      },
    );
  }

  final _requestAcquiringTransactionTokenUseCase =
      getIt<RequestAcquiringTransactionTokenUseCase>();
  final _updateCurrentAmountAndBackerCountUseCase =
      getIt<UpdateCurrentAmountAndBackerCountUseCase>();
  final _saveTransactionUseCase = getIt<SaveTransactionUseCase>();
  final _getUserAccountDetailUseCase = getIt<GetUserAccountDetailUseCase>();
}
