part of 'counter_bloc.dart';

@freezed
class CounterState with _$CounterState {
  const factory CounterState.initial() = Initial;

  const factory CounterState.success({@Default(0) int? counterValue}) = Success;

  const factory CounterState.loading() = Loading;
}
