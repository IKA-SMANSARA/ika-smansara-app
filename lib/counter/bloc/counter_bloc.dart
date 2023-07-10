import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ika_smansara/common/common.dart';
import 'package:ika_smansara/counter/counter.dart';
import 'package:ika_smansara/counter/domain/use_case/update_counter_data_use_case/update_counter_data_use_case.dart';

part 'counter_bloc.freezed.dart';

part 'counter_event.dart';

part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(const CounterState.initial()) {
    on<CounterEvent>(
      (event, emit) async {
        await event.when(
          started: () {
            // init loading first
            emit(const CounterState.loading());
          },
          fetchData: (documentId) async {
            // fetching data
            await _getCounterDataUseCase(documentId ?? '').then(
              (response) {
                emit(
                  CounterState.success(
                    counterValue: int.parse(response.data?.counterValue ?? '0'),
                  ),
                );
              },
            );
          },
          increment: (String? documentId) async {
            await _counter(documentId, emit, true);
          },
          decrement: (String? documentId) async {
            await _counter(documentId, emit, false);
          },
        );
      },
    );
  }

  Future<void> _counter(
    String? documentId,
    Emitter<CounterState> emit,
    bool isIncrement,
  ) async {
    await _getCounterDataUseCase(documentId ?? '').then(
      (response) async {
        // submit data
        // counting
        final counterValue = isIncrement
            ? (int.parse(response.data?.counterValue ?? '0') + 1).toString()
            : (int.parse(response.data?.counterValue ?? '0') - 1).toString();
        final counterDataDocumentRequest = CounterDataDocumentRequest(
          counterValue: counterValue,
        );
        final counterDocumentRequest = CounterDocumentRequest(
          documentId: response.data?.id ?? '',
          data: counterDataDocumentRequest,
          permissions: response.data?.permissions,
        );

        await _updateCounterDataUseCase(
          response.data?.id ?? '',
          counterDocumentRequest,
        ).then(
          (value) {
            // loading first
            emit(const CounterState.loading());
            emit(
              CounterState.success(
                counterValue: int.parse(value.data?.counterValue ?? '0'),
              ),
            );
          },
        );
      },
    );
  }

  final _getCounterDataUseCase = getIt<GetCounterDataUseCase>();
  final _updateCounterDataUseCase = getIt<UpdateCounterDataUseCase>();
}
