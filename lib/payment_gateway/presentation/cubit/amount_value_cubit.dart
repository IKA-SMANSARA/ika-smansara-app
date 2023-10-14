import 'package:bloc/bloc.dart';

class AmountValueCubit extends Cubit<String> {
  AmountValueCubit() : super('1');

  void updateAmountValue(String amountValue) {
    emit(amountValue);
  }
}
