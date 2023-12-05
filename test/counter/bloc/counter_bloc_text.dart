import 'package:flutter_test/flutter_test.dart';
import 'package:ika_smansara/common/common.dart';
import 'package:ika_smansara/counter/counter.dart';

void main() async {
  await configureDependencies();

  // final getCounterDataUseCase = getIt<GetCounterDataUseCase>();

  group('CounterBloc', () {
    test('initial state is 0 and loading is true', () {
      expect(CounterBloc(), equals(0));
      expect(CounterBloc(), equals(true));
    });

    // blocTest<CounterBloc, CounterState>(
    //   'expectation result success is 1',
    //   build: () => CounterBloc(getCounterDataUseCase),
    //   act: (bloc) => bloc.add(const CounterEvent.started()),
    //   expect: () => [1],
    // );

    // blocTest<CounterCubit, int>(
    //   'emits [1] when increment is called',
    //   build: CounterCubit.new,
    //   act: (cubit) => cubit.increment(),
    //   expect: () => [equals(1)],
    // );
    //
    // blocTest<CounterCubit, int>(
    //   'emits [-1] when decrement is called',
    //   build: CounterCubit.new,
    //   act: (cubit) => cubit.decrement(),
    //   expect: () => [equals(-1)],
    // );
  });
}
