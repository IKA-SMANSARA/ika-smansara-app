import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
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
          fetchData: (
            paymentAmount,
            paymentMethod,
            productDetails,
            customerVaName,
            email,
            phoneNumber,
            itemName,
            itemPrice,
            itemQuantity,
            customerFirstName,
            customerLastName,
            customerEmail,
            customerPhoneNumber,
            billingFirstName,
            billingLastName,
            billingAddress,
            billingCity,
            billingPostalCode,
            billingPhone,
            shippingFirstName,
            shippingLastName,
            shippingAddress,
            shippingCity,
            shippingPostalCode,
            shippingPhone,
          ) async {
            // fetching data

            await _requestTransactionUseCase(
              paymentAmount,
              paymentMethod,
              getMerchantOrderId(customerVaName),
              productDetails,
              customerVaName,
              email,
              phoneNumber,
              itemName,
              itemPrice,
              itemQuantity,
              customerFirstName,
              customerLastName,
              customerEmail,
              customerPhoneNumber,
              billingFirstName,
              billingLastName,
              billingAddress,
              billingCity,
              billingPostalCode,
              billingPhone,
              shippingFirstName,
              shippingLastName,
              shippingAddress,
              shippingCity,
              shippingPostalCode,
              shippingPhone,
            ).then(
              (response) {
                response.when(
                  success: (value) => emit(
                    TransactionState.success(value?.reference),
                  ),
                  error: (error, value) => emit(
                    TransactionState.error(error),
                  ),
                );
              },
            );
          },
        );
      },
    );
  }

  final _requestTransactionUseCase = getIt<RequestTransactionUseCase>();
}
