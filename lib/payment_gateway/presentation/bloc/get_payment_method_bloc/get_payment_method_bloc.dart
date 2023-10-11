import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ika_smansara/common/common.dart';
import 'package:ika_smansara/payment_gateway/payment_gateway.dart';
import 'package:intl/intl.dart';

part 'get_payment_method_bloc.freezed.dart';

part 'get_payment_method_event.dart';

part 'get_payment_method_state.dart';

class GetPaymentMethodBloc
    extends Bloc<GetPaymentMethodEvent, GetPaymentMethodState> {
  GetPaymentMethodBloc() : super(const GetPaymentMethodState.initial()) {
    on<GetPaymentMethodEvent>(
      (event, emit) async {
        await event.when(
          started: () {
            // init loading
            emit(const GetPaymentMethodState.loading());
          },
          fetchData: (
            amount,
          ) async {
            // fetching data
            final datetime =
                DateFormat('yyyy-MM-dd HH:mm:ss').format(DateTime.now());

            await _getPaymentMethodUseCase(
              Constants.merchantCode,
              amount,
              datetime,
            ).then(
              (response) {
                if (response.data?.paymentFee != null) {
                  emit(
                    GetPaymentMethodState.success(
                      paymentFee: response.data?.paymentFee,
                    ),
                  );
                } else {
                  emit(
                    GetPaymentMethodState.error(errorMessage: response.message),
                  );
                }
              },
            );
          },
        );
      },
    );
  }

  final _getPaymentMethodUseCase = getIt<GetPaymentMethodUseCase>();
}
